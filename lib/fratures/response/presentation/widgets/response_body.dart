import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/styles.dart';
import 'package:kook/core/widgets/customButton.dart';
import 'package:kook/fratures/response/presentation/manager/cubit/response_cubit.dart';
import 'package:kook/fratures/response/presentation/widgets/response_appbar.dart';
import 'package:kook/fratures/response/presentation/widgets/response_item.dart';

class ResponseBody extends StatelessWidget {
  const ResponseBody({super.key});

  @override
  Widget build(BuildContext context) {
    String text = '';
    return BlocConsumer<ResponseCubit, ResponseState>(
      listener: (context, state) {
        if (state is ResponseSuccess) {
          text = state.response;
        }
      },
      builder: (context, state) {
        if (state is ResponseSuccess) {
          text = state.response;
        }
        return SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 40, bottom: 24),
            child: Column(
              children: [
                const ResponseAppbar(),
                ResponsItem(
                  text: text,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    width: MediaQuery.of(context).size.width,
                    widget: Text(
                      'Return to the home page',
                      style: Styles.text16.copyWith(
                          color: AppColors.kLightColor,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
