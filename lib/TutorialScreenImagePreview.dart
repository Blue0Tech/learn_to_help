import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';

import 'clipper.dart';

class TutorialScreenImagePreview extends StatelessWidget {
  final String imageUrl;
  TutorialScreenImagePreview(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: this.imageUrl,
        child: ClipShadow(
          clipper: TicketClipper(0.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 0.0),
              blurRadius: 10.0,
              spreadRadius: 10.0,
              color: Color.fromRGBO(196, 196, 196, 1),
            )
          ],
          child: Container(
              color: Colors.greenAccent,
              height: 280.0,
              child: Image(
                height: 400.0,
                width: double.infinity,
                image: AssetImage(this.imageUrl),
                fit: BoxFit.cover,
              )
          ),
        ),
      ),
    );
  }
}