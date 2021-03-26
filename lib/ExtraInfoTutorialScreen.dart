import 'package:flutter/material.dart';

class ExtraInfoTutorialScreen extends StatelessWidget {
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
              '561',
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
              'Pass rate',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0
              ),
            ),
            Text(
              '90%',
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
              '20 min',
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