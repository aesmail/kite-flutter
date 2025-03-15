import 'package:json_annotation/json_annotation.dart';
import 'package:kite/models/category.dart';

part 'category_entity.g.dart';

@JsonSerializable()
class CategoryEntity {
  CategoryEntity({required this.name, required this.file});

  final String name;
  final String file;

  factory CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryEntityToJson(this);

  Category toCategory() {
    return Category(name: name, file: file);
  }
}
