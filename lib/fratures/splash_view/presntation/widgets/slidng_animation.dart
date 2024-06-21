import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/styles.dart';

class SlidingAnimation extends StatelessWidget {
  const SlidingAnimation({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        //عشان اعمل ريبيلد للانيميشن بس
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              'Pneumonia',
              style: Styles.textstyle30.copyWith(color: AppColors.kDarkColor),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
