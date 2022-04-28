import 'package:flutter/material.dart';
import 'package:travle_booking_app/textStye.dart';

Expanded listSingItem(
    {required double heigtOfList,
    required startTextUpper,
    required startTextLower,
    required CenterText,
    required EndPrince,
    required backgroundColor,}) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: heigtOfList,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: backgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
            borderRadius: BorderRadius.circular(30)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textWithStyle(
                    text: startTextUpper,
                    color: Colors.black,
                    fontsize: 20,
                    weight: FontWeight.bold),
                textWithStyle(
                    text: startTextLower,
                    color: Colors.black,
                    fontsize: 15,
                    weight: null),
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 56, 55, 55),
            height: heigtOfList - 70,
            width: 1,
          ),
          textWithStyle(
              text: CenterText,
              color: Color.fromARGB(255, 46, 44, 44),
              fontsize: 15,
              weight: FontWeight.bold),
          textWithStyle(
              text: EndPrince,
              color: Colors.black,
              fontsize: 20,
              weight: FontWeight.bold),
        ]),
      ),
    ),
  );
}
