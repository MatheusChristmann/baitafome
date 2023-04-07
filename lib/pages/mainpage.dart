import 'package:baitafome/pages/configpage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(246, 247, 241, 1),                        
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => ConfigPage(),
              ),
            );
          },
          color: Color.fromRGBO(83, 85, 82, 1),
          tooltip: 'Configurações',
        ),
        title: Text('Minhas Receitas',
          style: TextStyle(
            color: Color.fromRGBO(83, 85, 82, 1),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
            color: Color.fromRGBO(83, 85, 82, 1),
            tooltip: 'Pesquisar Receita',
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
            color: Color.fromRGBO(83, 85, 82, 1),
            tooltip: 'Opções',
          ),          
        ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Adicionar Receita',
        backgroundColor: Color.fromRGBO(223, 138, 84, 1),
        child: Icon(
          Icons.add,          
        ),      
      ),
      backgroundColor: Color.fromRGBO(235, 230, 210, 1),      
    );
  }
}