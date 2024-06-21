import 'package:bmi_cal/pages/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff090E21),
        scaffoldBackgroundColor: const Color(0xff090E21),
      ),
      home: InputPage(),
    );
  }
}
