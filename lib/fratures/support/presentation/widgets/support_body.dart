import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/static_const.dart';
import 'package:kook/core/widgets/custom_text_feild.dart';
import 'package:kook/fratures/support/presentation/widgets/Support_item.dart';
import 'package:kook/fratures/support/presentation/widgets/message_text_feld.dart';
import 'package:kook/fratures/support/presentation/widgets/support_appbar.dart';

class SupportBody extends StatefulWidget {
  const SupportBody({super.key});

  @override
  State<SupportBody> createState() => _SupportBodyState();
}

GlobalKey<FormState> key = GlobalKey();
String? text;
TextEditingController controller = TextEditingController();
final ScrollController _controller = ScrollController();

class _SupportBodyState extends State<SupportBody> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 24, bottom: 80),
                  child: Column(
                    children: [
                      const SupportAppbar(),
                      const SizedBox(
                        height: 43,
                      ),
                      const SupportItem(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(20),
                        text:
                            'Hello, may I know why you might suspect pneumonia?',
                        alignment: Alignment.centerLeft,
                        color: AppColors.kPrimary,
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      const SupportItem(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(0),
                        text:
                            'Sorry, there are many signs that i feel including cough and fever',
                        alignment: Alignment.centerRight,
                        color: AppColors.kLightblue,
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      const SupportItem(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(20),
                        text: 'Have you ever had any lung diseases?',
                        alignment: Alignment.centerLeft,
                        color: AppColors.kPrimary,
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      const SupportItem(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(0),
                        text:
                            "Ive never gone to the doctor, so I don't know, maybe just some bad coughing.",
                        alignment: Alignment.centerRight,
                        color: AppColors.kLightblue,
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      const SupportItem(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(20),
                        text:
                            'In this case, you may have to answer some questions to diagnose your condition carefully and accurately.Please go back to home page and choose “Condition Diagnosis”.',
                        alignment: Alignment.centerLeft,
                        color: AppColors.kPrimary,
                      ),
                      ListView.separated(
                        controller: _controller,
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
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          MessageTextFeild(
            controller: controller,
            sufexOnpreasd: () {
              if (key.currentState!.validate()) {
                setState(() {
                  Static.message.add(text!);
                  controller.clear();
                  _controller.animateTo(
                    _controller.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                });
              }
            },
            onchanged: (value) {
              text = value;
            },
          )
        ],
      ),
    );
  }
}
