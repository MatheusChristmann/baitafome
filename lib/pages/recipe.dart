import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});
  
  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
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
          tooltip: AppLocalizations.of(context)!.tooltip_return_to_mainmenu,
        ),
        title: Text(AppLocalizations.of(context)!.title_recipe_page,
          style: TextStyle(
            color: Color.fromRGBO(83, 85, 82, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(              
      ),
      backgroundColor: Color.fromRGBO(235, 230, 210, 1),      
    );
  }
}