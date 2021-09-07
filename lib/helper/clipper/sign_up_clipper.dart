import 'package:flutter/material.dart';

class SignUpClipperOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height*6.8/8);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0,0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}






class SignUpClipperTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height*3.2/4);
    path.lineTo(size.width, size.height*1.4/3);
    path.lineTo(size.width, 0);
    path.lineTo(0,0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}








class SignUpClipperThree extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height*1/2);
    path.lineTo(size.width*1/4, 0);
    path.lineTo(0,0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}