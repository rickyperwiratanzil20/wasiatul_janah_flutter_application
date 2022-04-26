// ignore_for_file: use_key_in_widget_constructors, unused_import, prefer_const_constructors, prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:wasiatul_janah_flutter_application/AlumniDataModel.dart';
import 'package:wasiatul_janah_flutter_application/Detail.dart';

class AlumniHome extends StatefulWidget {
  @override
  _AlumniHomeState createState() => _AlumniHomeState();
}

class _AlumniHomeState extends State<AlumniHome> {
  double xOffset = 0;
  double yOffset = 0;

  bool isDrawerOpen = false;

  static List<String> judul = [
    "Transkrip Nilai Alumni",
    "Pembayaran Uang Kuliah",
    "Tugas Akhir Kuliah (Skripsi)",
    "Berkas Digital Kuliah",
    "Data Profil Alumni",
  ];

  static List gambar = [
    'assets/number.png',
    'assets/money.png',
    'assets/book.png',
    'assets/file.png',
    'assets/account.png',
  ];

  final List<AlumniDataModel> AlumniData = List.generate(judul.length,
      (index) => AlumniDataModel('${judul[index]}', '${gambar[index]}'));

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(isDrawerOpen ? 0.85 : 1.00)
          ..rotateZ(isDrawerOpen ? -50 : 0),
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: isDrawerOpen
              ? BorderRadius.circular(40)
              : BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            isDrawerOpen
                ? GestureDetector(
                    child: Icon(Icons.arrow_back_ios),
                    onTap: () {
                      setState(() {
                        xOffset = 0;
                        yOffset = 0;
                        isDrawerOpen = false;
                      });
                    },
                  )
                : GestureDetector(
                    child: Icon(Icons.menu),
                    onTap: () {
                      setState(() {
                        xOffset = 290;
                        yOffset = 80;
                        isDrawerOpen = true;
                      });
                    },
                  ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(AlumniData[index].judul,
                          style: TextStyle(fontSize: 20)),
                      subtitle: Text('Tekan Untuk Mengetahui Lebih Detail'),
                      leading: Image(
                        image: AssetImage(AlumniData[index].gambar),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                Detail(alumniDataModel: AlumniData[index])));
                      },
                    ),
                  );
                },
                itemCount: judul.length,
              ),
            ),
          ],
        ));
  }
}
