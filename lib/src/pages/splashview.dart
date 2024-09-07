import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp/src/pages/home.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {

  @override
  void initState() {
    super.initState();
    // Navigate to Home after a delay
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const Home();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/whatsapp.png',
          width: 50,  // You can adjust the size of the image
          height: 50,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
