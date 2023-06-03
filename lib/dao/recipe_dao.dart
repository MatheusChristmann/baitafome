import 'package:floor/floor.dart';
import 'package:baitafome/models/recipe.dart';

@dao
abstract class RecipeDao {
  @Query('SELECT * FROM recipe ORDER BY recipe.id')
  Future<List<Recipe>> findAllRecipes();

  @Query('SELECT name FROM recipe')
  Future<List<String>> findAllRecipesName();

  @Query('SELECT * FROM recipe WHERE id = :id')
  Future<Recipe?> findRecipeById(int id);

  @Query('SELECT * FROM recipe WHERE name = :name')
  Future<Recipe?> findRecipeByName(String name);

  @Query('SELECT * FROM recipe WHERE type = :type')
  Future<Recipe?> findRecipeByType(int type);

  @insert
  Future<void> insertRecipe(Recipe recipe);
}
