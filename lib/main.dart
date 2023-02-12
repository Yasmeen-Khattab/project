import 'package:flutter/material.dart';
import 'package:project/screens/camera_screen.dart';
import 'package:project/screens/onboarding_screen.dart';
import 'package:project/screens/read_scan.dart';
import 'package:project/screens/scan_screen2.dart';
import 'package:project/screens/scan_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

debugShowCheckedModeBanner: false,
      home:CameraScreen()
    );
  }
}

