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
  ValueNotifier<bool> get isNetworkError => _categoryService.isNetworkError;
  ValueNotifier<bool> get isLoading => _categoryService.isLoading;

  CategoryViewModel({required CategoryService categoryService})
    : _categoryService = categoryService {
    setupViewModel();
  }

  void setupViewModel() async {
    _categoryService.isNetworkError.value = false;
    _categoryService.categories.value = await KiteRepository().getCategories();
    selectCategory(_categoryService.categories.value.first);
    getClusters();
  }

  Future<void> getClusters() async {
    if (clusters.containsKey(selectedCategory!.name)) {
      _categoryService.currentCluster.value = clusters[selectedCategory!.name]!;
    } else {
      _categoryService.isLoading.value = true;
      final newClusters = await KiteRepository().getClusters(selectedCategory!);
      if (newClusters.isNotEmpty) {
        setCategoryClusters(selectedCategory!, newClusters);
      }
      _categoryService.isLoading.value = false;
      final cluster = clusters[selectedCategory!.name];
      if (cluster != null && cluster.isNotEmpty) {
        _categoryService.currentCluster.value = cluster;
      }
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
