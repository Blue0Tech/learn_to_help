import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class ExtraInfoTutorialScreen extends StatefulWidget {
  String id;

  int hits;
  int passCount;
  int length;
  ExtraInfoTutorialScreen(id) {
    this.id = id;
    print(id);
    this.getData();
  }

  getData() async {
    var ref = FirebaseDatabase.instance.reference();
    var snapshot = await ref.child('global').child(this.id).once();
    this.hits = snapshot.value['hits'];
    this.passCount = snapshot.value['pass_count'];
    this.length = snapshot.value['length'];
    print(snapshot.value);
  }

  @override
  _ExtraInfoTutorialScreenState createState() => _ExtraInfoTutorialScreenState();
}

class _ExtraInfoTutorialScreenState extends State<ExtraInfoTutorialScreen> {
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
              (this.widget.hits??0).toString(),
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
              'Pass count',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0
              ),
            ),
            Text(
              (this.widget.passCount??0).toString(),
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
              '${this.widget.length??5} min',
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