import 'package:flutter/material.dart';

Container listSingleIcon({required heigtOfList,required icon}) {
  return Container(
                        color: Colors.white,
                        height: heigtOfList,
                        width: 150,
                        child: Image.asset(icon)
                      );
}