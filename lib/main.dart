// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:wasiatul_janah_flutter_application/DrawerScreen.dart';
import 'package:wasiatul_janah_flutter_application/AlumniHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Tracker Study Alumni',
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text('E-Tracker Study Alumni'),
        ),
        body: Stack(
          children: [
            DrawerScreen(),
            AlumniHome(),
          ],
        ),
      ),
    );
  }
}
