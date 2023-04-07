import 'package:flutter/material.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});
  
  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(246, 247, 241, 1),                        
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(
              context,               
            );
          },
          color: Color.fromRGBO(83, 85, 82, 1),
          tooltip: 'Voltar a Tela Principal',
        ),
        title: Text('Configurações',
          style: TextStyle(
            color: Color.fromRGBO(83, 85, 82, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(      
        children: <Widget>[
          const SizedBox(height: 18),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('SOBRE',            
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,              
              ),            
            ),          
          ),          
          const Divider(
            height: 20,          
            indent: 5,
            endIndent: 5,
            color: Colors.black,
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(235, 230, 210, 1),      
    );
  }
}