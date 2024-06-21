import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.onTap, required this.widget, required this.width});
  final void Function()? onTap;
  final Widget widget;
  final double width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 45,
        decoration: BoxDecoration(
            color: AppColors.kPrimary, borderRadius: BorderRadius.circular(15)),
        child: Center(child: widget),
      ),
    );
  }
}
