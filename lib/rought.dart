

// class buttons{
//   String name;
//   bool checkbutton = false;
//   buttons(this.name, this.checkbutton);
//   String Getname(){
//     return name;
//   }
//   void ChangeCheck( bool){
//     checkbutton = bool;
//   }
  
// }

//---=============================================================================================================

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     const title = 'InkWell Demo';

//     return const MaterialApp(
//       title: title,
//       home: MyHomePage(title: title),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String title;

//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: const Center(
//         child: MyButton(),
//       ),
//     );
//   }
// }

// class MyButton extends StatelessWidget {
//   const MyButton({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // The InkWell wraps the custom flat button widget.
//     return InkWell(
//       // When the user taps the button, show a snackbar.
//       onTap: () {
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text('Tap'),
//         ));
//       },
//       child: const Padding(
//         padding: EdgeInsets.all(12.0),
//         child: Text('Flat Button'),
//       ),
//     );
//   }
// }

//=====================================================bottom_sheet_bar 2.1.1=================================
// import 'package:bottom_sheet_bar/bottom_sheet_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() {
//   runApp(const ExampleApp());
// }

// class BottomSheetBarPage extends StatefulWidget {
//   final String title;

//   const BottomSheetBarPage({Key? key, this.title = ''}) : super(key: key);

//   @override
//   _BottomSheetBarPageState createState() => _BottomSheetBarPageState();
// }

// class ExampleApp extends StatelessWidget {
//   const ExampleApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'BottomSheetBar Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: const BottomSheetBarPage(title: 'BottomSheetBar'),
//     );
//   }
// }

// class _BottomSheetBarPageState extends State<BottomSheetBarPage> {
//   bool _isLocked = false;
//   bool _isCollapsed = true;
//   bool _isExpanded = false;
//   int _listSize = 5;
//   final _bsbController = BottomSheetBarController();
//   final _listSizeController = TextEditingController(text: '5');

//   @override
//   void initState() {
//     _bsbController.addListener(_onBsbChanged);
//     _listSizeController.addListener(_onListSizeChanged);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _bsbController.removeListener(_onBsbChanged);
//     super.dispose();
//   }

//   void _onListSizeChanged() {
//     _listSize = int.tryParse(_listSizeController.text) ?? 5;
//   }

//   void _onBsbChanged() {
//     if (_bsbController.isCollapsed && !_isCollapsed) {
//       setState(() {
//         _isCollapsed = true;
//         _isExpanded = false;
//       });
//     } else if (_bsbController.isExpanded && !_isExpanded) {
//       setState(() {
//         _isCollapsed = false;
//         _isExpanded = true;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//           actions: [
//             if (_isCollapsed)
//               IconButton(
//                 icon: const Icon(Icons.open_in_full),
//                 onPressed: _bsbController.expand,
//               ),
//             if (_isExpanded)
//               IconButton(
//                 icon: const Icon(Icons.close),
//                 onPressed: _bsbController.collapse,
//               ),
//           ],
//         ),
//         body: BottomSheetBar(
//           backdropColor: Colors.green,
//           locked: _isLocked,
//           color: Colors.lightBlueAccent,
//           controller: _bsbController,
//           borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(32.0),
//             topRight: Radius.circular(32.0),
//           ),
//           borderRadiusExpanded: const BorderRadius.only(
//             topLeft: Radius.circular(0.0),
//             topRight: Radius.circular(0.0),
//           ),
//           boxShadows: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 5.0,
//               blurRadius: 32.0,
//               offset: const Offset(0, 0), // changes position of shadow
//             ),
//           ],
//           expandedBuilder: (scrollController) {
//             final itemList =
//                 List<int>.generate(_listSize, (index) => index + 1);
//             return CustomScrollView(
//               controller: scrollController,
//               shrinkWrap: true,
//               slivers: [
//                 SliverFixedExtentList(
//                   itemExtent: 56.0, // I'm forcing item heights
//                   delegate: SliverChildBuilderDelegate(
//                     (context, index) => ListTile(
//                       title: Text(
//                         itemList[index].toString(),
//                         style: const TextStyle(fontSize: 20.0),
//                       ),
//                       onTap: () => showDialog(
//                         context: context,
//                         builder: (context) => AlertDialog(
//                           title: Text(
//                             itemList[index].toString(),
//                           ),
//                         ),
//                       ),
//                     ),
//                     childCount: _listSize,
//                   ),
//                 ),
//               ],
//             );
//           },
//           collapsed: TextButton(
//             onPressed: () => _bsbController.expand(),
//             child: Text(
//               'Click${_isLocked ? "" : " or swipe"} to expand',
//               style: const TextStyle(color: Colors.white),
//             ),
//           ),
//           body: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 12.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const Text('BottomSheetBar is'),
//                 Text(
//                   _isLocked ? 'Locked' : 'Unlocked',
//                   style: Theme.of(context).textTheme.headline4,
//                 ),
//                 Text(
//                   _isLocked
//                       ? 'Bottom sheet cannot be expanded or collapsed by swiping'
//                       : 'Swipe it to expand or collapse the bottom sheet',
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(
//                   width: 250,
//                   child: TextField(
//                     textAlign: TextAlign.center,
//                     keyboardType: TextInputType.number,
//                     inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                     controller: _listSizeController,
//                     decoration: const InputDecoration(
//                         hintText: 'Number of expanded list-items'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: _toggleLock,
//           tooltip: 'Toggle Lock',
//           child:
//               _isLocked ? const Icon(Icons.lock) : const Icon(Icons.lock_open),
//         ),
//       );

//   void _toggleLock() {
//     setState(() {
//       _isLocked = !_isLocked;
//     });
//   }
// }

//=============================================draggable_bottom_sheet: ^0.1.2==============================
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home:
//           DraggableBottomSheetExample(title: 'Draggable Bottom Sheet Example'),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class DraggableBottomSheetExample extends StatelessWidget {
//   DraggableBottomSheetExample({required this.title});
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     List<IconData> icons = [
//       Icons.ac_unit,
//       Icons.account_balance,
//       Icons.adb,
//       Icons.add_photo_alternate,
//       Icons.format_line_spacing
//     ];

//     return Scaffold(
//         body: DraggableBottomSheet(
//       backgroundWidget: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: Text(title),
//           backgroundColor: Colors.deepOrange,
//         ),
//         body: Container(
//           height: 400,
//           child: ListView.separated(
//             scrollDirection: Axis.horizontal,
//             padding: EdgeInsets.symmetric(vertical: 32),
//             itemCount: icons.length,
//             itemBuilder: (context, index) => Container(
//               width: MediaQuery.of(context).size.width * 0.7,
//               height: 200,
//               decoration: BoxDecoration(
//                   color: Colors.grey, borderRadius: BorderRadius.circular(20)),
//               child: Icon(
//                 icons[index],
//                 color: Colors.white,
//                 size: 60,
//               ),
//             ),
//             separatorBuilder: (context, index) => SizedBox(width: 10),
//           ),
//         ),
//       ),
//       previewChild: Container(
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//             color: Colors.pink,
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//         child: Column(
//           children: <Widget>[
//             Container(
//               width: 40,
//               height: 6,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(10)),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             Text(
//               'Drag Me',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: icons.map((icon) {
//                   return Container(
//                     width: 50,
//                     height: 50,
//                     margin: EdgeInsets.only(right: 16),
//                     child: Icon(
//                       icon,
//                       color: Colors.pink,
//                       size: 40,
//                     ),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10)),
//                   );
//                 }).toList())
//           ],
//         ),
//       ),
//       expandedChild: Container(
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//             color: Colors.pink,
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//         child: Column(
//           children: <Widget>[
//             Icon(
//               Icons.keyboard_arrow_down,
//               size: 30,
//               color: Colors.white,
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             Text(
//               'Hey...I\'m expanding!!!',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Expanded(
//               child: GridView.builder(
//                   itemCount: icons.length,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                   ),
//                   itemBuilder: (context, index) => Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Icon(
//                           icons[index],
//                           color: Colors.pink,
//                           size: 40,
//                         ),
//                       )),
//             )
//           ],
//         ),
//       ),
//       minExtent: 150,
//       maxExtent: MediaQuery.of(context).size.height * 0.8,
//     ));
//   }
// }

//=======================================lastone final one=======================

import 'package:draggable_bottom_sheet_nullsafety/draggable_bottom_sheet_nullsafety.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DraggableBottomSheetExample(
        title: 'Draggable Bottom Sheet Example',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DraggableBottomSheetExample extends StatelessWidget {
  final String title;

  const DraggableBottomSheetExample({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<IconData> icons = <IconData>[
      Icons.ac_unit,
      Icons.account_balance,
      Icons.adb,
      Icons.add_photo_alternate,
      Icons.format_line_spacing
    ];

    return Scaffold(
      body: DraggableBottomSheet(
        backgroundWidget: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(title),
            backgroundColor: Colors.deepOrange,
          ),
          body: SizedBox(
            height: 400,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 32),
              itemCount: icons.length,
              itemBuilder: (BuildContext context, int index) => Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  icons[index],
                  color: Colors.white,
                  size: 60,
                ),
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 10),
            ),
          ),
        ),
        previewChild: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: 40,
                height: 6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Drag Me',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: icons.map((icon) {
                  return Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    child: Icon(
                      icon,
                      color: Colors.pink,
                      size: 40,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
        expandedChild: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: <Widget>[
              const Icon(
                Icons.keyboard_arrow_down,
                size: 30,
                color: Colors.white,
              ),
              const SizedBox(height: 8),
              const Text(
                'Hey...I\'m expanding!!!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.builder(
                  itemCount: icons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        icons[index],
                        color: Colors.pink,
                        size: 40,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        minExtent: 150,
        maxExtent: MediaQuery.of(context).size.height * 0.8,
      ),
    );
  }
}





        //  CarouselSlider.builder(
        //   itemCount: 2,
        //   options: CarouselOptions(height: 400),

        //   itemBuilder: (context,index,realindex){
        //     final urlimage = url[index];
        //     return buildImage()
        //   }

        // Container(
        //   height: 100,
        //   width: double.infinity,
        //   child: GridView.count(
        //     crossAxisCount: 1,
        //     scrollDirection: Axis.horizontal,
        //     addAutomaticKeepAlives: false,
        //     children: [
        //       Container(
        //         height: 10,
        //         width: 50,
        //         color: Colors.amber[600],
        //         child: const Center(child: Text('Entry A')),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           height: 10,
        //           width: 50,
        //           color: Colors.amber[600],
        //           child: const Center(child: Text('Entry A')),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           height: 10,
        //           width: 50,
        //           color: Colors.amber[600],
        //           child: const Center(child: Text('Entry A')),
        //         ),
        //       ),
        //       Container(
        //         height: 10,
        //         width: 50,
        //         color: Colors.amber[600],
        //         child: const Center(child: Text('Entry A')),
        //       ),
        //       Container(
        //         height: 10,
        //         width: 50,
        //         color: Colors.amber[600],
        //         child: const Center(child: Text('Entry A')),
        //       ),
        //       Container(
        //         height: 10,
        //         width: 50,
        //         color: Colors.amber[600],
        //         child: const Center(child: Text('Entry A')),
        //       ),
        //     ],
        //   ),
        // ),
        // ListView(
        //   scrollDirection: Axis.horizontal,
        //   padding: const EdgeInsets.all(8),
        //   children: <Widget>[
        //     Container(
        //       height: 10,
        //       width: 50,
        //       color: Colors.amber[600],
        //       child: const Center(child: Text('Entry A')),
        //     ),
        //     Container(
        //       height: 10,
        //       width: 50,
        //       color: Colors.amber[500],
        //       child: const Center(child: Text('Entry B')),
        //     ),
        //     Container(
        //       height: 10,
        //       width: 50,
        //       color: Colors.amber[100],
        //       child: const Center(child: Text('Entry C')),
        //     ),
        //   ],
        // )



        
                // SizedBox(
                //   width: 250,
                //   height: 200,
                //   child: ListTile(
                //     leading: Icon(Icons.album),
                //     title: Text('The Enchanted Nightingale'),
                //   ),
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: Colors.black45,
                //   ),

                //   // color: Colors.pink,
                //   width: 200,
                //   height: 200,
                //   child: ListTile(
                //     leading: Icon(Icons.album),
                //     title: Text('The Enchanted Nightingale'),
                //   ),
                // ),

                // ElevatedButton(onPressed: (){}, child: ListTile(
                //         leading: Icon(Icons.album),
                //         title: Text('The Enchanted Nightingale'),
                //         subtitle:
                //             Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                //       ),)