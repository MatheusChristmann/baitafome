import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});
  
  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            const Text('Este á o aplicativo BaitaFome que será desenvolvido para Gerenciamento de Receitas Culinárias Pessoais!',
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