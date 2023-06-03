import 'package:baitafome/models/recipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../dao/database.dart';

class RecipePage extends StatefulWidget {
  final int recipeId;
  const RecipePage({super.key, required this.recipeId});
  
  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  List<Recipe> recipeList = [];

  @override
  void initState(){
    super.initState();
    loadAllowedRecipes(widget.recipeId);
  }

  // CARREGA AS RECEITAS DO BANCO DE DADOS
  Future<void> loadAllowedRecipes(int recipeId) async {
    final database = await $FloorAppDatabase.databaseBuilder('baitafome.db').build();
    final recipeDao = database.recipeDao;

    final recipes;
    if (recipeId == 0) {
      recipes = await recipeDao.findAllRecipes();
    }
    else{
      recipes = await recipeDao.findRecipeByType(recipeId);
    }

    setState((){
      recipeList = recipes;      
    });
  }  

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

      body: ListView.builder(
        padding:  EdgeInsets.all(16.0),
        itemCount: recipeList.length,
        itemBuilder: (BuildContext context, int index){
          Recipe recipe = recipeList[index];
          return Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(recipe.name ?? ''),
              subtitle: Text(recipe.description ?? ''),
            ),
          );
        },
      ),

      backgroundColor: Color.fromRGBO(235, 230, 210, 1),      
    );
  }
}