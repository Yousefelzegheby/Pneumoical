import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';

class PneumoniaAppbar extends StatelessWidget {
  const PneumoniaAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Pneumonia's",
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: AppColors.kPrimary),
        ),
      ],
    );
  }
}
