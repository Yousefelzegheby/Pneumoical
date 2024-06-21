import 'package:flutter/material.dart';
import 'package:kook/core/utilies/styles.dart';

class PenumoniaItem extends StatelessWidget {
  const PenumoniaItem({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.textstyle18.copyWith(fontWeight: FontWeight.bold),
          ),
          const Icon(Icons.arrow_drop_down)
        ],
      ),
    );
  }
}
