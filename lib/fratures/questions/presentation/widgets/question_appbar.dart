import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';

class QuestionAppbar extends StatelessWidget {
  const QuestionAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Condition Diagnosis ',
          style: TextStyle(
              fontSize: 30,
              color: AppColors.kPrimary,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
