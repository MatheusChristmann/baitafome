import 'package:floor/floor.dart';
import 'package:baitafome/models/recipe.dart';

@dao
abstract class RecipeDao {
  @Query('SELECT * FROM recipe ORDER BY recipe.id')
  Future<List<Recipe>> findAllRecipes();

  @Query('SELECT * FROM recipe WHERE id = :id')
  Future<Recipe?> findRecipeById(int id);

  @Query('SELECT * FROM recipe WHERE type = :type')
  Future<List<Recipe>> findRecipeByType(int type);

  @insert
  Future<void>insertRecipe(Recipe recipe);

  @delete
  Future<void>deleteRecipe(Recipe recipe);
}
