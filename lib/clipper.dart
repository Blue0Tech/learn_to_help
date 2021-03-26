import 'package:flutter/widgets.dart';
// custom clipper to make image look rectangular

class TicketClipper extends CustomClipper<Path> {
  TicketClipper(this.radius);

  final double radius;

  // @override
  // Path getClip(Size size) {
  //   var path = Path();
  //   path.moveTo(radius, 0.0);
  //   // path.arcToPoint(Offset(0.0, radius),
  //   //     clockwise: true, radius: Radius.circular(radius));
  //   path.lineTo(0.0, size.height - radius);
  //   // path.arcToPoint(Offset(radius, size.height),
  //   //     clockwise: true, radius: Radius.circular(radius));
  //   path.lineTo(size.width - radius, size.height);
  //   // path.arcToPoint(Offset(size.width, size.height - radius),
  //   //     clockwise: true, radius: Radius.circular(radius));
  //   path.lineTo(size.width, radius);
  //   // path.arcToPoint(Offset(size.width - radius, 0.0),
  //   //     clockwise: true, radius: Radius.circular(radius));
  //
  //   return path;
  // }
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 4,
      size.height,
      size.width / 2,
      size.height,
    );
    path.quadraticBezierTo(
      size.width - size.width / 4,
      size.height,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}