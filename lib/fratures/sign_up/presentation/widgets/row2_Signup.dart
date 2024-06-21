import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/styles.dart';

class Row2 extends StatelessWidget {
  const Row2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'use agreement,privacy policy',
            style: Styles.text14,
          ),
          Text(
            'and',
            style: Styles.text14.copyWith(color: AppColors.kDarkColor),
          ),
          const SizedBox(
            width: 4,
          ),
          const Text(
            'cookie policy',
            style: Styles.text16,
          )
        ],
      ),
    );
  }
}
