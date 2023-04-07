import 'package:baitafome/pages/mainpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BaitaFomeApp());
}

class BaitaFomeApp extends StatelessWidget {
  const BaitaFomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BaitaFome',
      theme: ThemeData(      
        primarySwatch: Colors.amber,
      ),
      home: const MainPage(title: 'BaitaFome'),
    );
  }
}


