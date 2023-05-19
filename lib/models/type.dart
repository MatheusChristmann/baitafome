import 'package:floor/floor.dart';

@entity
class Type {
  @PrimaryKey()
  int? id;

  String? description;

  Type({this.id, this.description});
}
