import 'package:flutter/material.dart';

class MyAvatar extends StatelessWidget {
  const MyAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperImage(),
      child: Image.asset(
        "assets/avatar.jpeg",
        height: 180.0,
        width: 180.0,
      ),
    );
  }
}

class CustomClipperImage extends CustomClipper<Path> {
  final weight = -0.015;
  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * 0.50);
    //first
    path.quadraticBezierTo(
        size.width * weight, size.height * weight, size.width * 0.5, 0);
    //second
    path.quadraticBezierTo(size.width * (1 - weight), size.height * weight,
        size.width, size.height * 0.5);
    path.quadraticBezierTo(size.width * (1 - weight),
        size.height * (1 - weight), size.width * 0.5, size.height);
    path.quadraticBezierTo(
        size.width * weight, size.height * (1 - weight), 0, size.height * 0.5);
    // path.moveTo(0, size.height * 0.50);
    // //first
    // path.quadraticBezierTo(
    //     size.width * weight, size.height * weight, size.width * 0.5, 0);
    // //second
    // path.quadraticBezierTo(size.width * (1 - weight), size.height * 0.02,
    //     size.width, size.height * 0.5);
    // path.quadraticBezierTo(size.width * (1 - weight), size.height * (1 - 0.02),
    //     size.width * 0.5, size.height);
    // path.quadraticBezierTo(
    //     size.width * weight, size.height * (1 - 0.02), 0, size.height * 0.5);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
