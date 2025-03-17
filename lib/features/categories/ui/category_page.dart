import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kite/design/kite_color.dart';
import 'package:kite/features/categories/category_view_model.dart';
import 'package:kite/features/cluster/ui/cluster_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<int> selectedItems = [];
  CategoryViewModel categoryViewModel = CategoryViewModel();

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
          "Tuesday, March 11",
          style: TextStyle(color: Colors.white54, fontSize: 16),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Color(0xFF1A202C),
        child: ListView.separated(
          separatorBuilder:
              (context, index) =>
                  Divider(color: Colors.white12, indent: 20, endIndent: 20),
          itemCount: categoryViewModel.clusters.length,
          itemBuilder: (context, index) {
            final cluster = categoryViewModel.clusters[index];
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
              trailing: Icon(Icons.check_circle_rounded, color: Colors.white54),
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
      ),
      bottomNavigationBar: Container(
        height: 75,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 18, 21, 28),
          border: Border(top: BorderSide(color: Colors.white12)),
        ),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          primary: false,
          padding: EdgeInsets.only(left: 20, right: 20),
          itemCount: categoryViewModel.categories.length,
          itemBuilder: (context, index) {
            final category = categoryViewModel.categories[index];
            final fontColor =
                category == categoryViewModel.selectedCategory
                    ? Colors.white
                    : Colors.white54;
            final fontWeight =
                category == categoryViewModel.selectedCategory
                    ? FontWeight.bold
                    : FontWeight.normal;
            final underlineColor =
                category == categoryViewModel.selectedCategory
                    ? Color(0xFFF4B745)
                    : Colors.transparent;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () async {
                  await categoryViewModel.selectCategory(category);
                  setState(() {});
                },
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: underlineColor, width: 2),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        category.name,
                        style: TextStyle(
                          color: fontColor,
                          fontSize: 16,
                          fontWeight: fontWeight,
                          // decoration: TextDecoration.underline,
                          // decorationStyle: TextDecorationStyle.solid,
                          // decorationColor: KiteColor.getTopicColor(category.name),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
