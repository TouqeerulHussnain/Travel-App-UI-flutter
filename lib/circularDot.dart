import 'package:flutter/material.dart';
Widget circularDot(color){
  return Container(
      width: 8.0,
      height: 8.0,
      margin: EdgeInsets.only(bottom: 5),
      decoration: new BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),);
}