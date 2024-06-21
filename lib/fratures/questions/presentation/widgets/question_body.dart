import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/static_const.dart';
import 'package:kook/core/utilies/styles.dart';
import 'package:kook/core/widgets/customButton.dart';
import 'package:kook/fratures/questions/presentation/widgets/question_appbar.dart';
import 'package:kook/fratures/questions/presentation/widgets/question_body_item.dart';
import 'package:kook/fratures/response/presentation/manager/cubit/response_cubit.dart';

class QuestionBody extends StatefulWidget {
  const QuestionBody({super.key});

  @override
  State<QuestionBody> createState() => _QuestionBodyState();
}

bool ischeck = false;

List<bool> itemStatus = List<bool>.filled(Static.question.length, false);

class _QuestionBodyState extends State<QuestionBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const QuestionAppbar(),
                    ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => QuestionBodyItem(
                              isCheck: itemStatus[index],
                              onTap: () {
                                setState(() {
                                  itemStatus[index] = !itemStatus[index];
                                  if (itemStatus[index] == true) {
                                    Static.app.add(Static.question[index]);
                                  } else {
                                    Static.app.remove(Static.question[index]);
                                  }
                                });
                              },
                              text: Static.question[index],
                            ),
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 10,
                            ),
                        itemCount: itemStatus.length)
                  ],
                ),
              ),
            )
          ],
        ),
        Positioned(
          bottom: 2,
          left: MediaQuery.of(context).size.width * .33,
          child: CustomButton(
              onTap: () {
                BlocProvider.of<ResponseCubit>(context).response();
                GoRouter.of(context).push('/response');
              },
              width: 150,
              widget: Text(
                'Submet',
                style: Styles.text16.copyWith(
                    color: AppColors.kLightColor, fontWeight: FontWeight.bold),
              )),
        ),
      ],
    );
  }
}
