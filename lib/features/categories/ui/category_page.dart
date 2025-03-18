import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kite/design/kite_color.dart';
import 'package:kite/features/categories/category_view_model.dart';
import 'package:kite/features/categories/ui/categories_bar.dart';
import 'package:kite/features/cluster/ui/cluster_page.dart';
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
      appBar: AppBar(
        backgroundColor: Color(0xFF1A202C),
        leadingWidth: 100,
        leading: Row(
          spacing: 5,
          children: [
            SizedBox(width: 10),
            SvgPicture.asset("lib/assets/images/kite_dark.svg", height: 35),
            Expanded(
              child: Text(
                "Kite",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
        title: Text(
          "Tuesday, March 17",
          style: TextStyle(color: Colors.white54, fontSize: 16),
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: categoryViewModel.currentCluster,
        builder: (context, clusters, child) {
          return Container(
            color: Color(0xFF1A202C),
            child: ListView.separated(
              separatorBuilder:
                  (context, index) =>
                      Divider(color: Colors.white12, indent: 20, endIndent: 20),
              itemCount: clusters.length,
              itemBuilder: (context, index) {
                final cluster = clusters[index];
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClusterPage(cluster: cluster),
                      ),
                    );
                  },
                  isThreeLine: true,
                  contentPadding: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                    left: 20,
                    right: 20,
                  ),
                  trailing: Icon(
                    Icons.check_circle_rounded,
                    color: Colors.white54,
                  ),
                  title: Text(
                    cluster.category,
                    style: TextStyle(
                      color: KiteColor.getTopicColor(cluster.category),
                      fontSize: 14,
                    ),
                  ),
                  subtitle: Text(
                    cluster.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: CategoriesBar(categoryViewModel: categoryViewModel),
    );
  }
}
