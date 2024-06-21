import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';

class SupportAppbar extends StatelessWidget {
  const SupportAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Support',
          style: TextStyle(
              fontSize: 40,
              color: AppColors.kPrimary,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
