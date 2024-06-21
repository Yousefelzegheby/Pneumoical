import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';

class ContactUsAppbar extends StatelessWidget {
  const ContactUsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contact Information',
          style: TextStyle(
              fontSize: 30,
              color: AppColors.kPrimary,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
    ;
  }
}
