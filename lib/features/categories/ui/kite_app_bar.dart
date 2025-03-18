import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class KiteAppBar extends StatelessWidget {
  const KiteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF1A202C),
      leadingWidth: 100,
      leading: Row(
        spacing: 5,
        children: [
          SizedBox(width: 10),
          SvgPicture.asset("lib/assets/images/kite_dark.svg", height: 35),
          Expanded(
            child: Text(
              "Kite",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      centerTitle: true,
      title: Text(
        "Tuesday, March 17",
        style: TextStyle(color: Colors.white54, fontSize: 16),
      ),
    );
  }
}
