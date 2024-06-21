import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';

class AppbarHome extends StatelessWidget {
  const AppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Home',
          style: TextStyle(
              fontSize: 40,
              color: AppColors.kPrimary,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
