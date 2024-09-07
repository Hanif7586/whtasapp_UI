import 'package:flutter/material.dart';
import 'package:whatsapp/src/pages/home.dart';
import 'package:whatsapp/src/pages/splashview.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashview(),
    );
  }
}
