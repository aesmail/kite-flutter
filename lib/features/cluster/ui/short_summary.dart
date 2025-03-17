import 'package:flutter/material.dart';

class ShortSummary extends StatelessWidget {
  final String shortSummary;

  const ShortSummary({super.key, required this.shortSummary});

  @override
  Widget build(BuildContext context) {
    return Text(
      shortSummary,
      style: TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}
