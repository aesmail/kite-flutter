import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:kite/services/category_service.dart';
import 'package:kite/services/service_locator.dart';

class KiteAppBar extends StatelessWidget {
  KiteAppBar({super.key});

  final categoryService = locator<CategoryService>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: categoryService.currentDate,
      builder: (context, date, child) {
        final currentTitle =
            date != null ? DateFormat('EEEE d MMMM').format(date) : "";
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
            currentTitle,
            style: TextStyle(color: Colors.white54, fontSize: 16),
          ),
        );
      },
    );
  }
}
