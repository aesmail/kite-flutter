import 'package:flutter/material.dart';

class NewsTitle extends StatelessWidget {
  final String title;

  const NewsTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: 22),
      maxLines: 3,
    );
  }
}
