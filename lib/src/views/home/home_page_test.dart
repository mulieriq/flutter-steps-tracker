// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:pedometer/pedometer.dart';

// String formatDate(DateTime d) {
//   return d.toString().substring(0, 19);
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
 

//   @override
//   void initState() {
//     super.initState();
//     initPlatformState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Pedometer example app'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'Steps taken:',
//                 style: TextStyle(fontSize: 30),
//               ),
//               Text(
//                 _steps,
//                 style: TextStyle(fontSize: 60),
//               ),
//               Divider(
//                 height: 100,
//                 thickness: 0,
//                 color: Colors.white,
//               ),
//               Text(
//                 'Pedestrian status:',
//                 style: TextStyle(fontSize: 30),
//               ),
//               Icon(
//                 _status == 'walking'
//                     ? Icons.directions_walk
//                     : _status == 'stopped'
//                         ? Icons.accessibility_new
//                         : Icons.error,
//                 size: 100,
//               ),
//               Center(
//                 child: Text(
//                   _status,
//                   style: _status == 'walking' || _status == 'stopped'
//                       ? TextStyle(fontSize: 30)
//                       : TextStyle(fontSize: 20, color: Colors.red),
//                 ),
//               ),
//               Center(
//                 child: Text(
//                   "Health Points ${_healthPoint.toString()}",
//                   style: TextStyle(fontSize: 20, color: Colors.red),
//                 ),
//               ),
//               Center(
//                 child: Text(
//                   "You Earned + ${_messagePointsGained.toString()} new Points",
//                   style: TextStyle(fontSize: 20, color: Colors.red),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
