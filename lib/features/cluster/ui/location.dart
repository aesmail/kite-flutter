import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  final String location;

  const Location({super.key, this.location = ""});

  @override
  Widget build(BuildContext context) {
    if (location.isEmpty) {
      return SizedBox.shrink();
    }
    return Row(
      spacing: 10,
      children: [
        Icon(Icons.pin_drop_outlined, color: Colors.white),
        Text(location, style: TextStyle(color: Colors.white, fontSize: 16)),
      ],
    );
  }
}
