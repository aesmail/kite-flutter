import 'package:flutter/material.dart';
import 'package:kite/features/categories/ui/category_page.dart';
import 'package:kite/repositories/kite_repository.dart';

void main() {
  final kiteRepo = KiteRepository();
  kiteRepo.getCategories();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kite',
      theme: ThemeData(
        // kite dark theme #1A202C
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF1A202C),
          onPrimary: Colors.white,
        ),
      ),
      home: const CategoryPage(),
    );
  }
}
