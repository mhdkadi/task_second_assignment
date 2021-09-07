import 'package:flutter/material.dart';

class SignInClipperOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height/2);
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






class SignInClipperTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height*3.2/4);
    path.lineTo(size.width, size.height/2);
    path.lineTo(size.width, 0);
    path.lineTo(0,0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}








class SignInClipperThree extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height*1.5/4);
    path.lineTo(size.width*1.1/2, 0);
    path.lineTo(0,0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}