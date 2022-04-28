import 'package:flutter/material.dart';
import 'textStye.dart';
// bool check = false;



TextButton listbutton({required text, required onpress, required color, required circle} ) {
    return TextButton(onPressed: onpress
    , child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      circle,
                      textWithStyle(
                        color: color,
                        fontsize: 18,
                        weight: FontWeight.bold,
                        text: text),
                        
                    ],
                  ),
                ),);
  }