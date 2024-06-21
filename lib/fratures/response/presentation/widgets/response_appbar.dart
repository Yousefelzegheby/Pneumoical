import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';

class ResponseAppbar extends StatelessWidget {
  const ResponseAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Your result',
          style: TextStyle(
              fontSize: 40,
              color: AppColors.kPrimary,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
