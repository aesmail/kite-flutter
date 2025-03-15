import 'package:kite/entities/category_entity.dart';

class Category {
  final String name;
  final String file;

  Category({required this.name, required this.file});

  CategoryEntity toCategoryEntity() {
    return CategoryEntity(name: name, file: file);
  }
}
