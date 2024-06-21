import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';

class SupportItem extends StatelessWidget {
  const SupportItem(
      {super.key,
      required this.text,
      required this.alignment,
      this.color,
      required this.bottomRight,
      required this.bottomLeft});
  final String text;
  final AlignmentGeometry alignment;
  final Color? color;
  final Radius bottomRight;
  final Radius bottomLeft;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: bottomLeft,
            bottomRight: bottomRight,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.kDarkColor,
          ),
        ),
      ),
    );
  }
}
