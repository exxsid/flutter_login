import 'package:flutter/material.dart';
import 'package:login/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log in',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
