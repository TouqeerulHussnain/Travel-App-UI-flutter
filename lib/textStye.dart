
import 'package:flutter/material.dart';


Text textWithStyle({required text, required color, required fontsize, required weight}) {
    return Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontsize,
          fontWeight: weight,
          ),
      );
  }

