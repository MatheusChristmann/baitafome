import 'package:baitafome/pages/mainpage.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const BaitaFomeApp());
}

class BaitaFomeApp extends StatelessWidget {
  const BaitaFomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(           
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


