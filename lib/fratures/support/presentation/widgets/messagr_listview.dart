import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/static_const.dart';
import 'package:kook/fratures/support/presentation/widgets/Support_item.dart';

class MessageListview extends StatefulWidget {
  const MessageListview({super.key});

  @override
  State<MessageListview> createState() => _MessageListviewState();
}

class _MessageListviewState extends State<MessageListview> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 13,
      ),
      itemCount: Static.message.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => SupportItem(
          bottomLeft: const Radius.circular(0),
          bottomRight: const Radius.circular(20),
          color: AppColors.kPrimary,
          text: Static.message[index],
          alignment: Alignment.centerLeft),
    );
  }
}
