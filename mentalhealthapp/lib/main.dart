import 'package:flutter/material.dart';
import 'package:mentalhealthapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}



/*
===========================================================
===========================================================
===========================================================
UI link : https://dribbble.com/shots/15002657-Mental-Health-App/attachments/6724284?mode=media
===========================================================
===========================================================
*/