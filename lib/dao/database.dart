import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'recipe_dao.dart';
import 'ingredient_dao.dart';
import 'package:baitafome/models/recipe.dart';
import 'package:baitafome/models/ingredient.dart';

//part 'database.g.dart'; 

@Database(version: 1, entities: [Recipe, Ingredient])
abstract class AppDatabase extends FloorDatabase {
  RecipeDao get recipeDao;
  IngredientDao get ingredientDao;
}
