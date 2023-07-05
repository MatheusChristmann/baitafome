import 'package:baitafome/pages/addrecipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:baitafome/pages/recipes.dart';

import 'categorys.dart';

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
        backgroundColor: Color.fromRGBO(223, 138, 84, 1),        
        title: Text(
          AppLocalizations.of(context)!.title_main_page,
          style: TextStyle(
            color: Color.fromRGBO(83, 85, 82, 1),
          ),
        ),
        centerTitle: true,

        actions: <Widget>[          
          PopupMenuButton(
            color: Color.fromRGBO(246, 247, 241, 1),
            icon: Icon(Icons.list_alt, color: Colors.black),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(AppLocalizations.of(context)!.list_all_recipes),              
                ),
              ];
            },
            offset: Offset(0, 64),
            onSelected: (value){
              if (value == 0) {
                Navigator.push(context,MaterialPageRoute(builder: (context) => RecipePage(typeId: 0),),);
              }
            },
          )
        ],

        
      ),
      body: Categorys(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addRecipe(context);
        },
        tooltip: AppLocalizations.of(context)!.tooltip_add_recipe,
        backgroundColor: Color.fromRGBO(223, 138, 84, 1),
        child: Icon(
          Icons.add,
        ),
      ),
      backgroundColor: Color.fromRGBO(235, 230, 210, 1),
    );
  }
}
