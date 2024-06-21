import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/widgets/custom_text_feild.dart';

class CustomTextFeildPassward extends StatefulWidget {
  final TextEditingController? controller;
  final dynamic Function(String)? onchanged;
  const CustomTextFeildPassward({super.key, this.controller, this.onchanged});

  @override
  State<CustomTextFeildPassward> createState() =>
      _CustomTextFeildPasswardState();
}

class _CustomTextFeildPasswardState extends State<CustomTextFeildPassward> {
  bool obscured = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFeild(
      controller: widget.controller,
      onchanged: widget.onchanged,
      label: const Text('Password'),
      obscured: obscured,
      sufex: Icons.remove_red_eye,
      sufexOnpreasd: () {
        setState(() {
          obscured = !obscured;
        });
      },
      color: AppColors.kDarkColor,
      hintText: 'Password',
    );
  }
}
