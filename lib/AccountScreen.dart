import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'ChangePassSuccess.dart';
import 'CustomError.dart';
import 'HomePage.dart';
import 'global.dart' as global;

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        backgroundColor: Colors.green[300],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ListView(
              children: [
                SizedBox(height: 30.0),
                global.imageLoaded?CircleAvatar(
                  radius: 50.0,
                  child: ClipOval(
                    child: SizedBox(
                      child: FadeInImage(
                        placeholder: AssetImage('assets/empty_profile.png'),
                        image: NetworkImage(FirebaseAuth.instance.currentUser?.photoURL??"blank"), // to prevent null error being thrown
                        imageErrorBuilder: (context, error, stackTrace) {
                          return Image.asset('assets/empty_profile.png',scale: 1);
                        },
                      ),
                      width: 100.0
                    ),
                    clipBehavior: Clip.hardEdge,
                  ),
                ):Text('Loading profile picture',textAlign: TextAlign.center),
                SizedBox(height: 30.0),
                RawMaterialButton(
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Change profile picture',style: TextStyle(
                            color: Colors.white
                        ),),
                      )
                  ),
                  onPressed: () async {
                    await this.getImage();
                    var url = await this.uploadPic();
                    if(url!=null) {
                      global.imageLoaded = false;
                      setState(() {});
                      await FirebaseAuth.instance.currentUser?.updatePhotoURL(url);
                      global.imageLoaded = true;
                      setState(() {});
                    }
                  },
                  fillColor: Colors.green[300],
                ),
                SizedBox(height: 30.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Name',style:TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  )),
                ),
                TextField(
                  controller: TextEditingController()..text = FirebaseAuth.instance.currentUser?.displayName ?? "",
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]!!)
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]!!)
                    )
                  ),
                  autocorrect: false,
                  onChanged: (text) {
                    global.displayName = text;
                  },
                ),
                SizedBox(height: 30.0),
                RawMaterialButton(
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Change name',style: TextStyle(
                          color: Colors.white
                        ),),
                      )
                  ),
                  onPressed: () {
                    FirebaseAuth.instance.currentUser?.updateDisplayName(global.displayName);
                  },
                  fillColor: Colors.green[300],
                ),
                SizedBox(height: 30.0),
                Center(
                  child: Text('Email',style: TextStyle(
                    fontSize: 20.0
                  ),),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Text(FirebaseAuth.instance.currentUser?.email??"",style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 30.0),
                RawMaterialButton(
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Reset password by email',style: TextStyle(
                            color: Colors.white
                        ),),
                      )
                  ),
                  onPressed: () {
                    FirebaseAuth.instance.sendPasswordResetEmail(email: (FirebaseAuth.instance.currentUser!!).email!!).then((value) {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ChangePassSuccess()));
                    }).catchError((e) {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => CustomError(e.message)));
                    });
                  },
                  fillColor: Colors.green[300],
                ),
                SizedBox(height: 10.0),
                RawMaterialButton(
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Log out',style: TextStyle(
                            color: Colors.white
                        ),),
                      )
                  ),
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  fillColor: Colors.green[300],
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getImage() async {
    final picker = ImagePicker();
    global.image = await picker.pickImage(source: ImageSource.gallery);
  }

  uploadPic() async {
    var image = global.image;
    Random random = new Random();
    var fileName = 'pfp ${random.nextInt(1000000000)}';
    Reference firebaseStorageRef = FirebaseStorage.instance.ref().child(fileName);
    UploadTask uploadTask = firebaseStorageRef.putFile(image);
    var fileUrlObj = await uploadTask.whenComplete(() => {});
    var fileUrl = await fileUrlObj.ref.getDownloadURL();
    return fileUrl;
  }
}