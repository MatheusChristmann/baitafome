import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'type_dao.dart';
import 'recipe_dao.dart';
import 'ingredient_dao.dart';
import 'package:baitafome/models/type.dart';
import 'package:baitafome/models/recipe.dart';
import 'package:baitafome/models/ingredient.dart';

part 'database.g.dart'; //Generated code here

@Database(version: 1, entities: [Type, Recipe, Ingredient])
abstract class AppDatabase extends FloorDatabase {
  TypeDao get typeDao;
  RecipeDao get recipeDao;
  IngredientDao get ingredientDao;
}
