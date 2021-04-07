import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart' as global;

class AccountScreen extends StatelessWidget {
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
                Image(
                  image: AssetImage('assets/illustration.png'),
                  height: 250.0,
                  width: 250.0,
                ),
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
                    FirebaseAuth.instance.currentUser.updatePassword(global.pass);
                  },
                  fillColor: Colors.red[300],
                ),
                SizedBox(height: 10.0),
                Text('Note: password must be at least 6 characters',textAlign: TextAlign.center)
              ],
            ),
          ),
        ),
      ),
    );
  }
}