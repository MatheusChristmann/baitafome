import 'package:baitafome/models/recipe.dart';
import 'package:baitafome/pages/viewRecipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../dao/database.dart';

class RecipePage extends StatefulWidget {
  final int typeId;
  const RecipePage({super.key, required this.typeId});
  
  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  List<Recipe> recipeList = [];

  @override
  void initState(){
    super.initState();
    loadAllowedRecipes(widget.typeId);
  }

  void viewRecipe(BuildContext context, int recipeId) async {
    String? result = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return ViewRecipeDialog(recipeId: recipeId);
      },    
    );

    if (result == 'D'){
      deleteRecipe(recipeId);      
    }
    else if (result == 'U'){
      await loadAllowedRecipes(widget.typeId);
    }
  }

  void deleteRecipe(int idRecipe) async {
    final database = await $FloorAppDatabase.databaseBuilder('baitafome.db').build();
    final recipeDao = database.recipeDao;

    Recipe? recipe = await recipeDao.findRecipeById(idRecipe);
    recipeDao.deleteRecipe(recipe!);

    await loadAllowedRecipes(widget.typeId);
  }

  // CARREGA AS RECEITAS DO BANCO DE DADOS
  Future<void> loadAllowedRecipes(int recipeId) async {
    final database = await $FloorAppDatabase.databaseBuilder('baitafome.db').build();
    final recipeDao = database.recipeDao;

    final recipes;
    if (recipeId == 0){
      recipes = await recipeDao.findAllRecipes();
    }
    else{
      recipes = await recipeDao.findRecipeByType(recipeId);
    }

    recipeList = []; 
    setState((){
      recipeList = recipes;      
    });
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(223, 138, 84, 1),                        
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
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 180.0),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  viewRecipe(context, recipe.id!); 
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SizedBox(
                    height: 100.0,
                    child: ListTile(
                      leading: IconTheme(
                        data: IconThemeData(
                          size: 60.0,
                        ),
                        child: Icon(Icons.receipt_long),
                      ),
                      title: Text(
                        recipe.name ?? '',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        recipe.description ?? '',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),

      backgroundColor: Color.fromRGBO(235, 230, 210, 1),      
    );
  }
}