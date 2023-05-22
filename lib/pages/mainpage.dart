import 'package:baitafome/pages/addrecipe.dart';
import 'package:baitafome/pages/configpage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        backgroundColor: Color.fromRGBO(246, 247, 241, 1),
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ConfigPage(),
              ),
            );
          },
          color: Color.fromRGBO(83, 85, 82, 1),
          tooltip: AppLocalizations.of(context)!.tooltip_settings,
        ),
        title: Text(
          AppLocalizations.of(context)!.title_main_page,
          style: TextStyle(
            color: Color.fromRGBO(83, 85, 82, 1),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Color.fromRGBO(83, 85, 82, 1),
            tooltip: AppLocalizations.of(context)!.tooltip_search_for_recipe,
          ),
          PopupMenuButton(
              color: Color.fromRGBO(246, 247, 241, 1),
              icon: Icon(Icons.more_vert, color: Colors.black),
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Text("Minha Conta"),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Text("Opções"),
                  ),
                  PopupMenuItem<int>(
                    value: 2,
                    child: Text("Sair"),
                  ),
                ];
              },
              offset: Offset(0, 64),
              onSelected: (value) {
                if (value == 0) {
                  print("opção de valor 0");
                } else if (value == 1) {
                  print("opção de valor 1");
                } else if (value == 2) {
                  print("opção de valor 2");
                }
              })
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
