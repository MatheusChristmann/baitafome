import 'package:floor/floor.dart';

@entity
class Recipe {
  @PrimaryKey(autoGenerate: true)
  int? id;

  String? name; 

  String? description;

  String? ingredients;

  int? type;  

  Recipe({    
    this.id,
    this.name, 
    this.description, 
    this.type,
    this.ingredients,     
  });
}
