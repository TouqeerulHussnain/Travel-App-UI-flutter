import 'package:flutter/material.dart';

Center iconButton({required icon, required onpress, required circle}) {
  return Center(
    child: Column(
      children: [
        IconButton(
        onPressed: onpress,
        icon: Icon(
          icon,
          color: Colors.white,
          size: 30,
        )),
        circle = circle,
      ],
    ),
  );
}
