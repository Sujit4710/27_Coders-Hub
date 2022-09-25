import 'package:blog_spot/responsive%20screens/mobile_layout.dart';
import 'package:blog_spot/responsive%20screens/responsive_layout.dart';
import 'package:blog_spot/responsive%20screens/web_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog Spot',
      home: ResponsiveLayout(
          webLayout: WebLayout(), mobileLayout: MobileLayout()),
    );
  }
}
