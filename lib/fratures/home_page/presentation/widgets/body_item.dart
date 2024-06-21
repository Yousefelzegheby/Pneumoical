import 'package:flutter/material.dart';

class ItemBody extends StatelessWidget {
  const ItemBody({super.key, this.onTap, required this.path});
  final void Function()? onTap;
  final String path;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 141,
          child: Image.asset(path)),
    );
  }
}
