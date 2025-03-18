import 'package:flutter/material.dart';
import 'package:kite/features/categories/category_view_model.dart';

class NetworkErrorWidget extends StatelessWidget {
  const NetworkErrorWidget({super.key, required this.categoryViewModel});

  final CategoryViewModel categoryViewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Ops! Please check your internet connection and try again.',
          style: TextStyle(color: Colors.white, fontSize: 20),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        TextButton(
          onPressed: () {
            categoryViewModel.setupViewModel();
          },
          child: Text('Retry', style: TextStyle(color: Colors.blue)),
        ),
      ],
    );
  }
}
