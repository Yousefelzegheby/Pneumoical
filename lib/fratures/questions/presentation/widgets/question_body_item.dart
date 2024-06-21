import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/styles.dart';
import 'package:kook/fratures/questions/presentation/widgets/button.dart';

class QuestionBodyItem extends StatelessWidget {
  const QuestionBodyItem(
      {super.key, required this.isCheck, this.onTap, required this.text});
  final bool isCheck;
  final Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Styles.text16.copyWith(color: AppColors.kDarkColor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            QuestionButton(
              isCheck: isCheck,
              onTap: onTap,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'yes',
              style: Styles.textstyle16,
            )
          ],
        )
      ],
    );
  }
}
