import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'ChangePassSuccess.dart';
import 'CustomError.dart';
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
        backgroundColor: Colors.red[300],
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
                      child: Image.network(FirebaseAuth.instance.currentUser.photoURL),
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
                      await FirebaseAuth.instance.currentUser.updateProfile(photoURL: url);
                      global.imageLoaded = true;
                      setState(() {});
                    }
                  },
                  fillColor: Colors.red[300],
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
                  controller: TextEditingController()..text = FirebaseAuth.instance.currentUser.displayName,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400])
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400])
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
                  FirebaseAuth.instance.currentUser.updateProfile(displayName: global.displayName);
                  },
                  fillColor: Colors.red[300],
                ),
                SizedBox(height: 30.0),
                Center(
                  child: Text('Email',style: TextStyle(
                    fontSize: 20.0
                  ),),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Text(FirebaseAuth.instance.currentUser.email,style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 30.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Password',style:TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87
                  )),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400])
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400])
                    )
                  ),
                  autocorrect: false,
                  onChanged: (text) {
                    global.pass = text;
                  },
                ),
                SizedBox(height: 10.0,),
                RawMaterialButton(
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Change password',style: TextStyle(
                            color: Colors.white
                        ),),
                      )
                  ),
                  onPressed: () {
                    FirebaseAuth.instance.currentUser.updatePassword(global.pass).then((value) {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ChangePassSuccess()));
                    }).catchError((e) {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => CustomError(e.message)));
                    });
                  },
                  fillColor: Colors.red[300],
                ),
                SizedBox(height: 10.0),
                // Text('Note: password must be at least 6 characters',textAlign: TextAlign.center)
              ],
            ),
          ),
        ),
      ),
    );
  }

  getImage() async {
    global.image = await ImagePicker.pickImage(source: ImageSource.gallery);
  }

  uploadPic() async {
    var path = global.image.path;
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