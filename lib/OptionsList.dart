import 'package:flutter/material.dart';

import 'AboutScreen.dart';
import 'AccountScreen.dart';
import 'itemModel.dart';
import 'FadeAnimation.dart';

class OptionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(1.1,Container(
      height: 90.0,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,

        ),
        scrollDirection: Axis.horizontal,
        itemCount: labels.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10.0),
            width: 160.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                // gradient: LinearGradient(
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter,
                //     colors: [
                //       Color(0xFFD45253),
                //       Color(0xFF9E1F28)
                //     ]
                // ),
                color: Colors.red[300],
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF9E1F28),
                    offset: Offset(0.0,2.0),
                    blurRadius: 6.0,

                  )
                ]
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RawMaterialButton(
                  onPressed: () {
                    if(labels[index]=='Your account') {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>AccountScreen()));
                    }
                    if(labels[index]=='About us') {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>AboutScreen()));
                    }
                  },
                  child: Text(
                    labels[index].toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.8,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    ));
  }
}