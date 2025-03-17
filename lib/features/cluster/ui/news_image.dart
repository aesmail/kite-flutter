import 'package:flutter/material.dart';

class NewsImage extends StatelessWidget {
  final Map<String, String> image;

  const NewsImage({super.key, this.image = const {}});

  @override
  Widget build(BuildContext context) {
    if (image.isEmpty) {
      return SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(image['image']!),
        ),
        if (image['caption'] != null && image['caption']!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              image['caption']!,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
      ],
    );
  }
}
