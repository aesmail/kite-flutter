import 'package:flutter/material.dart';
import 'package:kite/models/category.dart';
import 'package:kite/models/cluster.dart';
import 'package:kite/repositories/kite_repository.dart';
import 'package:kite/services/category_service.dart';

class CategoryViewModel {
  final CategoryService _categoryService;

  List<Category> get categories => _categoryService.categories.value;
  Category? get selectedCategory => _categoryService.selectedCategory.value;
  Map<String, List<Cluster>> get clusters => _categoryService.clusters.value;
  ValueNotifier<List<Cluster>> get currentCluster =>
      _categoryService.currentCluster;
  ValueNotifier<List<Category>> get categoriesNotifier =>
      _categoryService.categories;
  ValueNotifier<Category?> get selectedCategoryNotifier =>
      _categoryService.selectedCategory;

  CategoryViewModel({required CategoryService categoryService})
    : _categoryService = categoryService {
    _categoryService.categories.value = KiteRepository().standardCategories();
    selectCategory(_categoryService.categories.value.first);
    getClusters();
  }

  Future<void> getClusters() async {
    if (clusters.containsKey(selectedCategory!.name)) {
      _categoryService.currentCluster.value = clusters[selectedCategory!.name]!;
    } else {
      final newClusters = await KiteRepository().getClusters(selectedCategory!);
      setCategoryClusters(selectedCategory!, newClusters);
      _categoryService.currentCluster.value = clusters[selectedCategory!.name]!;
    }
  }

  Future<void> selectCategory(Category category) async {
    _categoryService.selectedCategory.value = category;
    await getClusters();
  }

  void setCategoryClusters(Category category, List<Cluster> clusters) {
    final existingClusters = _categoryService.clusters.value;
    if (!existingClusters.containsKey(category.name)) {
      existingClusters[category.name] = clusters;
      _categoryService.clusters.value = Map.from(existingClusters);
    }
  }
}
