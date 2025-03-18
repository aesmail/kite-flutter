import 'package:flutter/material.dart';
import 'package:kite/models/category.dart';
import 'package:kite/models/cluster.dart';

class CategoryService {
  ValueNotifier<List<Category>> categories = ValueNotifier<List<Category>>([]);
  ValueNotifier<Category?> selectedCategory = ValueNotifier<Category?>(null);
  ValueNotifier<Map<String, List<Cluster>>> clusters =
      ValueNotifier<Map<String, List<Cluster>>>(<String, List<Cluster>>{});
  ValueNotifier<List<Cluster>> currentCluster = ValueNotifier<List<Cluster>>(
    [],
  );
  ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
  ValueNotifier<bool> isNetworkError = ValueNotifier<bool>(false);
  ValueNotifier<DateTime?> currentDate = ValueNotifier<DateTime?>(null);
}
