import 'package:baitafome/models/recipe.dart';
import 'package:flutter/material.dart';
import 'package:baitafome/models/type.dart';
import '../dao/database.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ViewRecipeDialog extends StatefulWidget {
  final int recipeId;

  ViewRecipeDialog({required this.recipeId});

  @override
  _ViewRecipeDialogState createState() => _ViewRecipeDialogState();
}

class _ViewRecipeDialogState extends State<ViewRecipeDialog> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController ingredientsController = TextEditingController();

  List<Type>? allowedTypes;
  Type? selectedType;
  Recipe? recipe;

  @override
  void initState() {
    super.initState();
    loadAllowedTypes();
    loadRecipeDetails(widget.recipeId);
  }

  void updateRecipe(int idRecipe) async {
    final database = await $FloorAppDatabase.databaseBuilder('baitafome.db').build();
    final recipeDao = database.recipeDao;

    Recipe? recipe = await recipeDao.findRecipeById(idRecipe);

    recipe!.name = nameController.text;
    recipe.description = descriptionController.text;
    recipe.ingredients = ingredientsController.text;
    recipe.type = selectedType?.id;

    recipeDao.updateRecipe(recipe);
    Navigator.of(context).pop('U');
  }

  // CARREGA TIPOS DO BANCO DE DADOS
  Future<void> loadAllowedTypes() async {
    final database = await $FloorAppDatabase.databaseBuilder('baitafome.db').build();
    final typeDao = database.typeDao;
    allowedTypes = await typeDao.findAllTypes();
    setState(() {});
  }

  Future<void> loadRecipeDetails(int recipeId) async {
    final database = await $FloorAppDatabase.databaseBuilder('baitafome.db').build();
    final recipeDao = database.recipeDao;    

    recipe = await recipeDao.findRecipeById(widget.recipeId);
    selectedType = allowedTypes?.firstWhere((type) => type.id == recipe?.type);

    idController.text = recipe?.id.toString() ?? '';
    nameController.text = recipe?.name ?? '';
    descriptionController.text = recipe?.description ?? '';
    ingredientsController.text = recipe?.ingredients ?? '';    

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalizations.of(context)!.recipe_informations),
      content: Container(
        width: 540,
        height: 600,
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: TextField(
                    controller: idController,
                    maxLength: 5,
                    maxLines: 1,
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.label_id,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      counter: SizedBox.shrink(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),                    
                  ),
                ),

                SizedBox(width: 10),

                Flexible(
                  flex: 4,
                  child: TextField(
                    controller: nameController,
                    maxLength: 30,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.label_name,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      counter: SizedBox.shrink(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 20),
            TextField(
              controller: descriptionController,
              maxLines: 2,
              maxLength: 100,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.label_description,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                counter: SizedBox.shrink(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              inputFormatters: [
                FilteringTextInputFormatter.deny('\n'),
              ],
            ),

            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: DropdownButtonFormField<Type>(
                isExpanded: true,
                icon: const Icon(Icons.receipt),
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.label_typerecipe,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                value: selectedType,
                onChanged: (Type? value) {
                  setState(() {
                    selectedType = value;
                  });
                },
                items: allowedTypes?.map((Type type) {
                  return DropdownMenuItem<Type>(
                    value: type,
                     child: Text(type.description),
                    );
                  }).toList() ??
                [],
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: ingredientsController,
              maxLines: 10,
              maxLength: 1000,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.label_ingredients,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                counter: SizedBox.shrink(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          ],
        ),
      ),

      actions: [
        TextButton(
          child: Text(
            AppLocalizations.of(context)!.button_delete,
            style: TextStyle(
              color: Colors.red,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop('D');// D - Delete
          },
        ),        

        SizedBox(width: 330,),

        TextButton(
          child: Text(
            AppLocalizations.of(context)!.button_save,
            style: TextStyle(
              color: Colors.green,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            updateRecipe(widget.recipeId);            
          },
        ),        

        TextButton(
          child: Text(
            AppLocalizations.of(context)!.button_exit,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop(); 
          },
        ),
      ],
    );
  }
}



