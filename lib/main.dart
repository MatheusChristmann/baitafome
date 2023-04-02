import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BaitaFome',
      theme: ThemeData(      
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'BaitaFome'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(     
        child: Column(      
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Este á o aplicativo BaitaFome que será desenvolvido para Gerenciamento de Receitas Culinárias Pessoais!',
              style: TextStyle(
                fontSize: 15,
              ),              
            ),            
          ],
        ),
      ),
    );
  }
}
