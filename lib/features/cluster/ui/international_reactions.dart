import 'dart:convert';

import 'package:flutter/material.dart';

class InternationalReactions extends StatelessWidget {
  final List<String> reactions;

  const InternationalReactions({super.key, required this.reactions});

  @override
  Widget build(BuildContext context) {
    if (reactions.isEmpty) {
      return SizedBox.shrink();
    }
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Text(
          "International reactions",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (reactions.isNotEmpty)
          ...reactions.map((reaction) {
            final List<int> rawCountry = reaction.split(":")[0].runes.toList();
            final country = utf8.decode(rawCountry);
            final text = reaction.split(":")[1];
            return Container(
              decoration: BoxDecoration(
                color: Color(0xFF374151),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    country,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            );
          }),
      ],
    );
  }
}
