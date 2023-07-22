// ignore_for_file: camel_case_types

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/first_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';

class opening extends StatefulWidget {
  const opening({super.key});

  @override
  State<opening> createState() => _openingState();
}

class _openingState extends State<opening> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const FirstScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Image.asset('assets/images/splash.jpg'),
        ),
      ),
    );
  }
}
