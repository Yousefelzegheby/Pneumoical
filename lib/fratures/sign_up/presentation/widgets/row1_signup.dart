import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/styles.dart';

class Row1 extends StatelessWidget {
  const Row1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'By clicking sign up,you agree to',
            style: Styles.text14.copyWith(color: AppColors.kDarkColor),
          ),
          const SizedBox(
            width: 4,
          ),
          const Text(
            'pneumoical',
            style: Styles.text16,
          )
        ],
      ),
    );
  }
}
