import 'package:flutter/material.dart';
import 'package:kite/features/categories/ui/category_page.dart';
import 'package:kite/services/service_locator.dart';

void main() {
  setupLocator();
  runApp(const KiteApp());
}

class KiteApp extends StatelessWidget {
  const KiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kite',
      theme: ThemeData(
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
