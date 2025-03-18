import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kite/entities/cluster_entity.dart';
import 'package:kite/models/category.dart';
import 'package:kite/entities/category_entity.dart';
import 'package:kite/models/cluster.dart';
import 'package:kite/services/category_service.dart';
import 'package:kite/services/service_locator.dart';

class KiteRepository {
  final String baseURL = "https://kite.kagi.com";
  final _categoryService = locator<CategoryService>();

  Future<List<Category>> getCategories() async {
    try {
      final response = await http.get(Uri.parse("$baseURL/kite.json"));
      if (response.statusCode == 200) {
        final decoder = JsonDecoder();
        final Map json = decoder.convert(response.body);
        final date = DateTime.fromMillisecondsSinceEpoch(
          (json['timestamp'] as int) * 1000,
        );
        _categoryService.currentDate.value = date;
        return (json['categories'] as List)
            .map((category) => CategoryEntity.fromJson(category).toCategory())
            .toList();
      } else {
        throw Exception("Failed to load categories");
      }
    } catch (e) {
      _categoryService.isNetworkError.value = true;
      return [];
    }
  }

  Future<List<Cluster>> getClusters(Category category) async {
    try {
      final response = await http.get(Uri.parse("$baseURL/${category.file}"));
      if (response.statusCode == 200) {
        final decoder = JsonDecoder();
        final Map json = decoder.convert(response.body);
        List<Cluster> clusters =
            (json['clusters'] as List)
                .map((cluster) => ClusterEntity.fromJson(cluster).toCluster())
                .toList();
        return clusters;
      } else {
        throw Exception("Failed to load clusters");
      }
    } catch (e) {
      _categoryService.isNetworkError.value = true;
      return [];
    }
  }
}
