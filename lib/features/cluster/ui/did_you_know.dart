import 'package:flutter/material.dart';

class DidYouKnow extends StatelessWidget {
  final String text;

  const DidYouKnow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    if (text.isEmpty) {
      return SizedBox.shrink();
    }
    return Column(
      children: [
        SizedBox(height: 40),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xAA293A5E),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Did you know?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(text, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
