import 'dart:ffi';
import 'package:baitafome/models/recipe.dart';
import 'package:floor/floor.dart';

@entity
class Ingredient {
  @PrimaryKey(autoGenerate: true)
  int? id;

  String? description;

  double? quantity;

  @ForeignKey(entity: Recipe, parentColumns: ['id'], childColumns: ['recipeId'])
  int? recipe;

  Ingredient({
    required this.description,
    required this.quantity,
    required this.recipe,
  });
}
