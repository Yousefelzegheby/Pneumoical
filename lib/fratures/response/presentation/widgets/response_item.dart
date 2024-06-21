import 'package:flutter/material.dart';

class ResponsItem extends StatelessWidget {
  const ResponsItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          top: 13,
          left: 13,
          right: 12,
          bottom: 6,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0x894A90E2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(text));
  }
}
