import 'package:floor/floor.dart';

@entity
class Type {
  @PrimaryKey()
  final int id;

  final String description;

  Type({required this.id, required this.description});
}
