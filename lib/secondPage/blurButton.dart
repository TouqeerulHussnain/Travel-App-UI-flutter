
import 'dart:ui';

import 'package:flutter/material.dart';
Container blurButton({required icon}) {
    return Container(
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                      filter:ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Icon(icon,color: Colors.red,size: 30,),
                    ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      
                    color: Colors.grey[200],
                    ),
                  );
  }