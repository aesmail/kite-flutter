import 'package:flutter/material.dart';
import 'package:kite/features/categories/ui/category_page.dart';
// import 'package:kite/repositories/kite_repository.dart';
import 'package:kite/services/service_locator.dart';

void main() {
  setupLocator();
  // final kiteRepo = KiteRepository();
  // kiteRepo.getCategories();
  runApp(const KiteApp());
}

class KiteApp extends StatelessWidget {
  const KiteApp({super.key});

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
        scaffoldBackgroundColor: Color(0xFF1A202C),
      ),
      home: const CategoryPage(),
    );
  }
}
