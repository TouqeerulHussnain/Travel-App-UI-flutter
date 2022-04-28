import 'package:flutter/material.dart';
import 'package:travle_booking_app/textStye.dart';
import 'listSingItem.dart';
import 'listSingleIcon.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void showSheet(context) {
  List<String> logoImage = [
    'assets/images/logo1.jpg',
    'assets/images/logo2.png',
    'assets/images/logo3.jpg',
    'assets/images/logo4.png',
    'assets/images/logo5.png',
    'assets/images/logo6.png',
    'assets/images/logo7.png'
  ];
  double h = MediaQuery.of(context).size.height;
  double w = MediaQuery.of(context).size.width;
  double heigtOfList = 150;
  double widthOfList = 300;
  showModalBottomSheet(
      enableDrag: true,
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: .9,
          // minChildSize: .7,
          // maxChildSize: .9,
          expand: true,
          builder: (_, myscrollor) {
            return Container(
              width: w,
              child: ListView(
                controller: myscrollor,
                children: [
                  Container(
                    width: w,
                    // height: 10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                          child: Container(
                            height: 4,
                            width: 60,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                          child: textWithStyle(
                              text: 'Details',
                              color: Colors.black,
                              fontsize: 18,
                              weight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: w,
                    // height: 10,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                          child: textWithStyle(
                              text: '17 october 2022',
                              color: Colors.grey,
                              fontsize: 15,
                              weight: null),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              textWithStyle(
                                  text: 'ODS',
                                  color: Colors.black,
                                  fontsize: 22,
                                  weight: FontWeight.bold),
                              Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.teal,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.teal,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.teal,
                                  ),
                                ],
                              ),
                              Icon(
                                FontAwesomeIcons.plane,
                                color: Colors.teal,
                                size: 50,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.teal,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.teal,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.teal,
                                  ),
                                ],
                              ),
                              textWithStyle(
                                  text: 'GNR',
                                  color: Colors.black,
                                  fontsize: 22,
                                  weight: FontWeight.bold),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(55, 20, 45, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              textWithStyle(
                                  text: 'Odissa',
                                  color: Colors.grey,
                                  fontsize: 15,
                                  weight: null),
                              textWithStyle(
                                  text: 'G. Nigurah Rai',
                                  color: Colors.grey,
                                  fontsize: 15,
                                  weight: null),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: heigtOfList - 50,
                    width: w,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textWithStyle(
                                    text: 'Sort By ',
                                    color: Color.fromARGB(255, 141, 137, 137),
                                    fontsize: 15,
                                    weight: null),
                                Container(
                                  height: 40,
                                  width: 80,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 10, 0, 10),
                                    child: textWithStyle(
                                        text: 'Price',
                                        color: Colors.black54,
                                        fontsize: 15,
                                        weight: null),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey[100],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(1, 9, 0, 10),
                              child: Icon(Icons.grid_view_outlined),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[100],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: heigtOfList,
                    child: Row(
                      children: [
                        listSingleIcon(
                            heigtOfList: heigtOfList, icon: logoImage[0]),
                        listSingItem(
                            backgroundColor: Colors.white,
                            heigtOfList: heigtOfList,
                            startTextUpper: 'ODS - GNR',
                            startTextLower: '10:00 - 11:00',
                            CenterText: 'Business Class',
                            EndPrince: '980')
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: heigtOfList,
                    child: Row(
                      children: [
                        listSingleIcon(
                            heigtOfList: heigtOfList, icon: logoImage[1]),
                        listSingItem(
                            backgroundColor: Colors.teal,
                            heigtOfList: heigtOfList,
                            startTextUpper: 'ODS - GNR',
                            startTextLower: '10:00 - 11:00',
                            CenterText: 'Business Class',
                            EndPrince: '980')
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: heigtOfList,
                    child: Row(
                      children: [
                        listSingleIcon(
                            heigtOfList: heigtOfList, icon: logoImage[2]),
                        listSingItem(
                            backgroundColor: Colors.white,
                            heigtOfList: heigtOfList,
                            startTextUpper: 'ODS - GNR',
                            startTextLower: '10:00 - 11:00',
                            CenterText: 'Business Class',
                            EndPrince: '980')
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: heigtOfList,
                    child: Row(
                      children: [
                        listSingleIcon(
                            heigtOfList: heigtOfList, icon: logoImage[3]),
                        listSingItem(
                            backgroundColor: Colors.white,
                            heigtOfList: heigtOfList,
                            startTextUpper: 'ODS - GNR',
                            startTextLower: '10:00 - 11:00',
                            CenterText: 'Business Class',
                            EndPrince: '980')
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.white,
                        height: 60,
                        width: w,
                        child: Container(
                            height: 60,
                            width: w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.teal,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                textWithStyle(
                                    text: 'Book',
                                    color: Colors.white,
                                    fontsize: 30,
                                    weight: FontWeight.bold),
                              ],
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }));
}
