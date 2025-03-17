import 'package:flutter/material.dart';

class BusinessAngle extends StatelessWidget {
  final String text;
  final List<String> angles;

  const BusinessAngle({super.key, this.text = '', this.angles = const []});

  @override
  Widget build(BuildContext context) {
    if (text.isEmpty && angles.isEmpty) {
      return SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Wrap(
        runSpacing: 10,
        children: [
          Text(
            "Business angle",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          if (text.isNotEmpty)
            Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
          if (angles.isNotEmpty)
            Column(
              spacing: 10,
              children:
                  angles.map((angle) {
                    return Text(
                      angle,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    );
                  }).toList(),
            ),
        ],
      ),
    );
  }
}
