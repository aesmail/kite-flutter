import 'package:flutter/material.dart';
import 'package:kite/features/categories/category_view_model.dart';

class CategoriesBar extends StatefulWidget {
  const CategoriesBar({super.key, required this.categoryViewModel});

  final CategoryViewModel categoryViewModel;

  @override
  State<CategoriesBar> createState() => _CategoriesBarState();
}

class _CategoriesBarState extends State<CategoriesBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 18, 21, 28),
        border: Border(top: BorderSide(color: Colors.white12)),
      ),
      child: ValueListenableBuilder(
        valueListenable: widget.categoryViewModel.categoriesNotifier,
        builder: (context, categories, child) {
          return ValueListenableBuilder(
            valueListenable: widget.categoryViewModel.selectedCategoryNotifier,
            builder: (context, selectedCategory, child) {
              return ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                primary: false,
                padding: EdgeInsets.only(left: 20, right: 20),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  final fontColor =
                      category == selectedCategory
                          ? Colors.white
                          : Colors.white54;
                  final fontWeight =
                      category == selectedCategory
                          ? FontWeight.bold
                          : FontWeight.normal;
                  final underlineColor =
                      category == selectedCategory
                          ? Color(0xFFF4B745)
                          : Colors.transparent;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () async {
                        await widget.categoryViewModel.selectCategory(category);
                      },
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: underlineColor,
                                width: 2,
                              ),
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
              );
            },
          );
        },
      ),
    );
  }
}
