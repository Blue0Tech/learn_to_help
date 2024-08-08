import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class ExtraInfoTutorialScreen extends StatefulWidget {
  final String id;
  ExtraInfoTutorialScreen(this.id);
  @override
  _ExtraInfoTutorialScreenState createState() => _ExtraInfoTutorialScreenState(this.id);
}

class _ExtraInfoTutorialScreenState extends State<ExtraInfoTutorialScreen> {
  String id;
  int hits;
  int length;
  bool passed;
  _ExtraInfoTutorialScreenState(id) {
    this.id = id;
    this.getData();
  }
  getData() async {
    var ref = FirebaseDatabase.instance.reference().child('global').child(this.id);
    var auth = FirebaseAuth.instance;
    var passedRef = FirebaseDatabase.instance.reference().child('users').child(auth.currentUser.uid);
    this.passed = false;
    passedRef.once().then((snapshot) {
      var hasPassed = snapshot.value[this.id];
      if(hasPassed!=null) this.passed = true;
      setState(() {});
    }).catchError((e) {print(e);});
    ref.once().then((snapshot) {
      this.hits = snapshot.value['hits'];
      this.length = snapshot.value['length'];
      ref.child('hits').set(this.hits+1);
      this.hits+=1;
      setState(() {});
    }).catchError((e) {});
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              'Passed',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0
              )
            ),
            Text(this.passed?'yes':'no',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600
            ))
          ],
        ),
        Column(
          children: [
            Text(
              'Hits',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0
              ),
            ),
            Text(
              (this.hits??'?').toString(),
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
        Column(
          children: [
            Text(
              'Length',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0
              ),
            ),
            Text(
              '${this.length??'?'} min',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600
              ),
            )
          ],
        )
      ],
    );
  }
}