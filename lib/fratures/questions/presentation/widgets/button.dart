import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton({
    super.key,
    required this.isCheck,
    this.onTap,
  });
  final bool isCheck;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.kDarkColor, width: 2),
          color: isCheck ? AppColors.kDarkColor : Colors.transparent,
        ),
        width: 15,
        height: 15,
        child: isCheck
            ? const Icon(Icons.check, color: Colors.white, size: 20)
            : null,
      ),
    );
  }
}
