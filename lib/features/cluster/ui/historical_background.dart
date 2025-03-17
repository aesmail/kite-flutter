import 'package:flutter/material.dart';

class NewsParagraph extends StatelessWidget {
  final String title;
  final String content;

  const NewsParagraph({super.key, required this.title, this.content = ""});

  @override
  Widget build(BuildContext context) {
    if (content.isEmpty) {
      return SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text(content, style: TextStyle(color: Colors.white, fontSize: 16)),
      ],
    );
  }
}
