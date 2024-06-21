import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/widgets/custom_text_feild.dart';

class MessageTextFeild extends StatelessWidget {
  const MessageTextFeild(
      {super.key, this.sufexOnpreasd, this.onchanged, this.controller});
  final void Function()? sufexOnpreasd;
  final dynamic Function(String)? onchanged;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 1,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            color: AppColors.kLightColor,
            child: CustomTextFormFeild(
              controller: controller,
              fillColor: AppColors.kLightColor,
              color: AppColors.kDarkColor,
              hintText: 'write your message here',
              sufex: Icons.send,
              sufexOnpreasd: sufexOnpreasd,
              onchanged: onchanged,
            ),
          ),
        ),
      ),
    );
  }
}
