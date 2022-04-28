import 'dart:js';

import 'package:flutter/material.dart';
import 'package:travle_booking_app/listButton.dart';
import 'textStye.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'listbutton.dart';
import 'cardButton.dart';
import 'circularDot.dart';
import 'rought.dart';
import 'iconButtons.dart';
import 'secondPage/secondPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum listButtonEnum {
  button1,
  button2,
  button3,
  button4,
  button5,
  button6,
}

enum bottombuttons {
  home,
  location,
  favorite,
  profile,
}

class _HomePageState extends State<HomePage> {
  Color activeColor = Colors.teal;
  Color inactiveColor = Colors.grey;
  Color activeColorBottom = Colors.white;
  Color inactiveColorBottom = Colors.transparent;
  listButtonEnum? Selectedbutton;
  bottombuttons? bottomButtonSelected;

  List<String> sliderimage = [
    'assets/images/island1.jpg',
    'assets/images/island2.jpg',
    'assets/images/island3.jpg',
    'assets/images/island4.jpg',
    'assets/images/island5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: textWithStyle(
              color: Colors.black,
              fontsize: 20,
              weight: FontWeight.bold,
              text: 'Discover'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
          leading: Icon(
            Icons.format_list_bulleted_rounded,
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              child: ListView(
                children: [
                  listbutton(
                      text: 'Japan',
                      onpress: () {
                        setState(() {
                          Selectedbutton = listButtonEnum.button1;
                        });
                      },
                      color: Selectedbutton == listButtonEnum.button1
                          ? activeColor
                          : inactiveColor,
                      circle: Selectedbutton == listButtonEnum.button1
                          ? circularDot(activeColor)
                          : circularDot(Colors.transparent)),
                  listbutton(
                      text: 'Pakistan',
                      onpress: () {
                        setState(() {
                          Selectedbutton = listButtonEnum.button2;
                        });
                      },
                      color: Selectedbutton == listButtonEnum.button2
                          ? activeColor
                          : inactiveColor,
                      circle: Selectedbutton == listButtonEnum.button2
                          ? circularDot(activeColor)
                          : circularDot(Colors.transparent)),
                  listbutton(
                      text: 'India',
                      onpress: () {
                        setState(() {
                          Selectedbutton = listButtonEnum.button3;
                        });
                      },
                      color: Selectedbutton == listButtonEnum.button3
                          ? activeColor
                          : inactiveColor,
                      circle: Selectedbutton == listButtonEnum.button3
                          ? circularDot(activeColor)
                          : circularDot(Colors.transparent)),
                  listbutton(
                      text: 'China',
                      onpress: () {
                        setState(() {
                          Selectedbutton = listButtonEnum.button4;
                        });
                      },
                      color: Selectedbutton == listButtonEnum.button4
                          ? activeColor
                          : inactiveColor,
                      circle: Selectedbutton == listButtonEnum.button4
                          ? circularDot(activeColor)
                          : circularDot(Colors.transparent)),
                  listbutton(
                      text: 'Africa',
                      onpress: () {
                        setState(() {
                          Selectedbutton = listButtonEnum.button5;
                        });
                      },
                      color: Selectedbutton == listButtonEnum.button5
                          ? activeColor
                          : inactiveColor,
                      circle: Selectedbutton == listButtonEnum.button5
                          ? circularDot(activeColor)
                          : circularDot(Colors.transparent)),
                  listbutton(
                      text: 'Canada',
                      onpress: () {
                        setState(() {
                          Selectedbutton = listButtonEnum.button6;
                        });
                      },
                      color: Selectedbutton == listButtonEnum.button6
                          ? activeColor
                          : inactiveColor,
                      circle: Selectedbutton == listButtonEnum.button6
                          ? circularDot(activeColor)
                          : circularDot(Colors.transparent)),
                ],
                scrollDirection: Axis.horizontal,
              ),
            ),
            Divider(
              height: 30,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.transparent,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 320.0,
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
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
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
                            Container(
                                height: 40,
                                padding: EdgeInsets.all(10),
                                child: ListTile(
                                  trailing: Icon(
                                    Icons.more_vert,
                                  ),
                                  title: textWithStyle(
                                      text: 'Bali island',
                                      color: Colors.black,
                                      fontsize: 20,
                                      weight: FontWeight.bold),
                                  subtitle: Row(
                                    children: [
                                      Icon(
                                        Icons.hotel,
                                        color: Colors.teal,
                                      ),
                                      textWithStyle(
                                          text: ' Hotels',
                                          color: Colors.grey,
                                          fontsize: 13,
                                          weight: null)
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Divider(
              height: 30,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.transparent,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textWithStyle(
                      text: 'Top Destination',
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
            Divider(
              height: 30,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.transparent,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cardbutton(
                  text: 'Bandung',
                  subtext: 'West Java',
                  image: sliderimage[0],
                ),
                cardbutton(
                  text: 'Lambok',
                  subtext: 'NTS',
                  image: sliderimage[1],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // bottom buttons
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 60,
                  // color: Colors.amberAccent,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.teal),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      iconButton(
                          icon: Icons.home,
                          onpress: () {
                            setState(() {
                              bottomButtonSelected = bottombuttons.home;
                            });
                          },
                          circle: bottomButtonSelected == bottombuttons.home
                              ? circularDot(activeColorBottom)
                              : circularDot(inactiveColorBottom)),
                      iconButton(
                          icon: Icons.compass_calibration,
                          onpress: () {
                            setState(() {
                              bottomButtonSelected = bottombuttons.location;
                            });
                          },
                          circle: bottomButtonSelected == bottombuttons.location
                              ? circularDot(activeColorBottom)
                              : circularDot(inactiveColorBottom)),
                      iconButton(
                          icon: Icons.star,
                          onpress: () {
                            setState(() {
                              bottomButtonSelected = bottombuttons.favorite;
                            });
                          },
                          circle: bottomButtonSelected == bottombuttons.favorite
                              ? circularDot(activeColorBottom)
                              : circularDot(inactiveColorBottom)),
                      iconButton(
                          icon: Icons.person,
                          onpress: () {
                            setState(() {
                              bottomButtonSelected = bottombuttons.profile;
                            });
                          },
                          circle: bottomButtonSelected == bottombuttons.profile
                              ? circularDot(activeColorBottom)
                              : circularDot(inactiveColorBottom)),
                      // icon(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  CarouselSlider slider() {
    return CarouselSlider(
      options: CarouselOptions(
          height: 320.0, enableInfiniteScroll: false, enlargeCenterPage: true),
      items: [0, 1, 2, 3, 4].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(sliderimage[i]), fit: BoxFit.cover),
                      // color: Colors.teal,
                    ),
                  ),
                  Container(
                      height: 40,
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        trailing: Icon(
                          Icons.more_vert,
                        ),
                        title: textWithStyle(
                            text: 'Bali island',
                            color: Colors.black,
                            fontsize: 20,
                            weight: FontWeight.bold),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.hotel,
                              color: Colors.teal,
                            ),
                            textWithStyle(
                                text: ' Hotels',
                                color: Colors.grey,
                                fontsize: 13,
                                weight: null)
                          ],
                        ),
                      ))
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
