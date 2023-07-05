import 'package:floor/floor.dart';

@entity
class Type {
  @PrimaryKey()
  int id;
  String description;

  Type({
    required this.id, 
    required this.description
  });
}
