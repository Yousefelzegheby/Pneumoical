import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({
    Key? key,
    this.keyboardType,
    this.onsaved,
    this.sufexOnpreasd,
    this.label,
    this.sufex,
    this.onchanged,
    required this.color,
    this.hintText,
    this.obscured = false,
    this.controller,
    this.fillColor,
  }) : super(key: key);
  final Color color;
  final String? hintText;
  final Function(String)? onchanged;
  final bool? obscured;
  final IconData? sufex;
  final void Function()? sufexOnpreasd;
  final Text? label;
  final void Function(String?)? onsaved;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Color? fillColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscured!,
      keyboardType: keyboardType,
      validator: (data) {
        if (data!.isEmpty) {
          return 'not allow';
        }
      },
      onSaved: onsaved,
      controller: controller,
      onChanged: onchanged,
      decoration: InputDecoration(
          // filled: true,
          fillColor: fillColor,
          border: borderStyle(),
          enabledBorder: borderStyle(),
          label: label,
          hintText: hintText,
          suffixIcon: GestureDetector(onTap: sufexOnpreasd, child: Icon(sufex)),
          hintStyle: const TextStyle(color: AppColors.kGray)),
    );
  }

  OutlineInputBorder borderStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: color,
        ));
  }
}
