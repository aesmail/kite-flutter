import 'package:flutter/material.dart';
import 'package:kite/features/categories/category_view_model.dart';
import 'package:kite/features/categories/ui/categories_bar.dart';
import 'package:kite/features/categories/ui/kite_app_bar.dart';
import 'package:kite/features/categories/ui/network_error_widget.dart';
import 'package:kite/features/categories/ui/news_tile.dart';
import 'package:kite/services/category_service.dart';
import 'package:kite/services/service_locator.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  CategoryViewModel categoryViewModel = CategoryViewModel(
    categoryService: locator<CategoryService>(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: KiteAppBar(),
      ),
      body: ValueListenableBuilder(
        valueListenable: categoryViewModel.isLoading,
        builder: (context, isLoading, child) {
          return ValueListenableBuilder(
            valueListenable: categoryViewModel.isNetworkError,
            builder: (context, networkError, child) {
              return ValueListenableBuilder(
                valueListenable: categoryViewModel.currentCluster,
                builder: (context, clusters, child) {
                  final backgroundColor = Color(0xFF1A202C);
                  if (networkError) {
                    return Container(
                      color: backgroundColor,
                      child: NetworkErrorWidget(
                        categoryViewModel: categoryViewModel,
                      ),
                    );
                  } else if (isLoading) {
                    return Container(
                      color: backgroundColor,
                      child: Center(
                        child: CircularProgressIndicator(
                          color: Color(0xFFF4B745),
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      color: backgroundColor,
                      child: ListView.separated(
                        separatorBuilder:
                            (context, index) => Divider(
                              color: Colors.white12,
                              indent: 20,
                              endIndent: 20,
                            ),
                        itemCount: clusters.length,
                        itemBuilder: (context, index) {
                          final cluster = clusters[index];
                          return NewsTile(cluster: cluster);
                        },
                      ),
                    );
                  }
                },
              );
            },
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: CategoriesBar(categoryViewModel: categoryViewModel),
      ),
    );
  }
}
