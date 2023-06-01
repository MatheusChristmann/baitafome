import 'package:floor/floor.dart';

@entity
class Recipe {
  @PrimaryKey(autoGenerate: true)
  int? id;

  String? name; 

  String? description;

    String? ingredients;

  @ForeignKey(entity: Type, parentColumns: ['id'], childColumns: ['typeId'])
  int? type;  

  Recipe({
    this.name, 
    this.description, 
    this.ingredients, 
    this.type
  });
}
