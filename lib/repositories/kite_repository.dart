import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kite/entities/cluster_entity.dart';
import 'package:kite/models/category.dart';
import 'package:kite/entities/category_entity.dart';
import 'package:kite/models/cluster.dart';

class KiteRepository {
  final String baseURL = "https://kite.kagi.com";

  List<Category> standardCategories() {
    return [
      Category(name: "World", file: "world.json"),
      Category(name: "Business", file: "business.json"),
      Category(name: "Technology", file: "tech.json"),
      Category(name: "Science", file: "science.json"),
      Category(name: "Sports", file: "sports.json"),
    ];
  }

  Future<List<Category>> getCategories() async {
    final response = await http.get(Uri.parse("$baseURL/kite.json"));
    if (response.statusCode == 200) {
      final decoder = JsonDecoder();
      final Map json = decoder.convert(response.body);
      return (json['categories'] as List)
          .map((category) => CategoryEntity.fromJson(category).toCategory())
          .toList();
    } else {
      throw Exception("Failed to load categories");
    }
  }

  Future<List<Cluster>> getClusters(Category category) async {
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
  }
}
