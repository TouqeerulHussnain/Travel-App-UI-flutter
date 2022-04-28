import 'dart:html';
import 'dart:math';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:draggable_bottom_sheet_nullsafety/draggable_bottom_sheet_nullsafety.dart';
import 'package:travle_booking_app/textStye.dart';
import 'showSheet.dart';
import 'blurButton.dart';
import 'package:flutter/material.dart';
import 'package:travle_booking_app/iconButtons.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> sliderimage = [
    'assets/images/island1.jpg',
    'assets/images/island2.jpg',
    'assets/images/island3.jpg',
    'assets/images/island4.jpg',
    'assets/images/island5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  // shape:RoundedRectangleBorder(),
                  borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/island1.jpg',
                      ),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 30,
                              width: 30,
                              child: GestureDetector(
                                onTap: (){Navigator.pop(context);},
                                child: blurButton(icon: Icons.arrow_back_ios_new))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                              height: 30,
                              width: 30,
                              child: blurButton(
                                  icon: Icons.arrow_forward_ios_rounded)),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: textWithStyle(
                                  text: 'Bali Island',
                                  color: Colors.white,
                                  fontsize: 35,
                                  weight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              // color: Colors.transparent,
                              height: 30,
                              width: 30,
                              child: blurButton(
                                  icon:
                                      Icons.photo_size_select_actual_rounded)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: textWithStyle(
                              text: 'Bali Island',
                              color: Colors.white,
                              fontsize: 15,
                              weight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: textWithStyle(
                    text:
                        'Lorem ipsum dolor sit amet Facilisis magna etiam tempor orci eu lobortis elementum nibh. Porttitor rhoncus dolor purus Tincidunt praesent semper feugiat nibh sed. Suspendisse potenti nullam ac tortor toren of town non enim praesent elementum facilisis leo.',
                    color: Colors.grey,
                    fontsize: 15,
                    weight: null),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textWithStyle(
                        text: 'Top Activitie',
                        color: Colors.black,
                        fontsize: 20,
                        weight: FontWeight.bold),
                    textWithStyle(
                        text: 'View All',
                        color: Colors.blue,
                        fontsize: 15,
                        weight: FontWeight.bold)
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                    height: 250.0,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true),
                items: [0, 1, 2, 3, 4].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(sliderimage[i]),
                                    fit: BoxFit.cover),
                                // color: Colors.teal,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  Navigator.pop(context);
                },
                onVerticalDragUpdate: (DragUpdateDetails dragUpdateDetails) {
                  showSheet(context);
                },
                child: Container(
                  // width: w,
                  // height: 10,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      )),
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
                        child: Row(
                          children: [
                            textWithStyle(
                                text: '17 oct',
                                color: Colors.grey,
                                fontsize: 15,
                                weight: null),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 2, 30, 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            textWithStyle(
                                text: 'Odissa Bali',
                                color: Colors.black,
                                fontsize: 22,
                                weight: FontWeight.bold),
                            textWithStyle(
                                text: '967 Dollar',
                                color: Colors.black,
                                fontsize: 22,
                                weight: FontWeight.bold),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Row(
                          children: [
                            textWithStyle(
                                text: '08:00 - 22:00',
                                color: Colors.grey,
                                fontsize: 15,
                                weight: null),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}







//==========================================stack===========================
// Stack(
//               children: [
//                 Container(
//               height: h*.36,
//               width:  w,
//               color: Colors.amber,

//             ),
//                 DraggableScrollableSheet(
//               initialChildSize: .6,
//               minChildSize: .6,
//               maxChildSize: .7,
//               builder: (BuildContext context, scrollController) {
//                     return Container(
//                         child: ListView(
//                           controller: scrollController,
//                           children: [
//                             Container(
//                               height: 200,
//                               width: w,
//                               color: Colors.red,
//                             ),
//                             Container(
//                               height: 200,
//                               width: w,
//                               color: Colors.pink,
//                             ),
//                             Container(
//                               height: 200,
//                               width: w,
//                               color: Colors.yellow,
//                             ),
//                           ],
//                         ),
//                     );
// })
//               ],
//             )