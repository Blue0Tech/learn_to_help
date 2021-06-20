import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class ExtraInfoTutorialScreen extends StatefulWidget {
  String id;
  ExtraInfoTutorialScreen(id) {
    this.id = id;
  }
  @override
  _ExtraInfoTutorialScreenState createState() => _ExtraInfoTutorialScreenState(this.id);
}

class _ExtraInfoTutorialScreenState extends State<ExtraInfoTutorialScreen> {
  String id;
  int hits;
  int length;
  _ExtraInfoTutorialScreenState(id) {
    this.id = id;
    print(id);
    this.getData();
  }
  getData() async {
    var ref = FirebaseDatabase.instance.reference().child('global').child(this.id);
    print('created reference');
    ref.once().then((snapshot) {
      print('snapshot fetched');
      this.hits = snapshot.value['hits'];
      this.length = snapshot.value['length'];
      ref.child('hits').set(this.hits+1);
      this.hits+=1;
      setState(() {});
      print(snapshot.value);
    }).catchError((e) {
      print(e);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
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