import 'package:kite/models/category.dart';
import 'package:kite/models/cluster.dart';
import 'package:kite/repositories/kite_repository.dart';

class CategoryViewModel {
  List<Category> categories = [];
  Category selectedCategory = Category(name: "", file: "");
  List<Cluster> clusters = [];

  CategoryViewModel() {
    categories = KiteRepository().standardCategories();
    selectedCategory = categories.first;
    getClusters();
  }

  Future<void> getClusters() async {
    clusters = await KiteRepository().getClusters(selectedCategory);
  }

  Future<void> selectCategory(Category category) async {
    selectedCategory = category;
    await getClusters();
  }
}
