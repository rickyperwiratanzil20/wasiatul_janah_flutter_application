// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:wasiatul_janah_flutter_application/AlumniDataModel.dart';

class Detail extends StatelessWidget {
  final AlumniDataModel alumniDataModel;
  const Detail({Key? key, required this.alumniDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(alumniDataModel.judul),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                width: 300,
                image: AssetImage(alumniDataModel.gambar),
              ),
              Text(
                alumniDataModel.judul,
                style: TextStyle(fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}
