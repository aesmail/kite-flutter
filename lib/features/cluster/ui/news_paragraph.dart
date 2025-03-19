import 'package:flutter/material.dart';

class NewsParagraph extends StatelessWidget {
  final String title;
  final String content;
  final List<String> items;

  const NewsParagraph({
    super.key,
    required this.title,
    this.content = "",
    this.items = const [],
  });

  @override
  Widget build(BuildContext context) {
    if (content.isEmpty && items.isEmpty) {
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
        if (content.isNotEmpty)
          Text(content, style: TextStyle(color: Colors.white, fontSize: 16)),
        if (items.isNotEmpty)
          Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                items
                    .map(
                      (item) => Text(
                        "• $item",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                    .toList(),
          ),
      ],
    );
  }
}
