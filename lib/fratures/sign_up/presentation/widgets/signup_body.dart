import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kook/core/snakbar.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/styles.dart';
import 'package:kook/core/widgets/customButton.dart';
import 'package:kook/core/widgets/custom_text_feild.dart';
import 'package:kook/core/widgets/custom_textfeild_password.dart';
import 'package:kook/fratures/sign_up/presentation/manager/cubit/sign_up_cubit.dart';
import 'package:kook/fratures/sign_up/presentation/widgets/row1_signup.dart';
import 'package:kook/fratures/sign_up/presentation/widgets/row2_Signup.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

String? password;
String? email;
Widget? widget;

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> key = GlobalKey();
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is RegisterFaliurState) {
          showsnakbar(context, state.erMesssage!);
        } else if (state is RegisterSuccesState) {
          showsnakbar(context, 'Sign Up success, log in now');
          GoRouter.of(context).pop();
        }
      },
      builder: (context, state) {
        if (state is RegisterLoodingState) {
          widget = const CircularProgressIndicator(
            color: AppColors.kLightColor,
          );
        } else {
          widget = const Text(
            'Sign Up',
            style: Styles.text25,
          );
        }
        return SingleChildScrollView(
          child: Form(
            key: key,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'pneumoical',
                    style: Styles.textstyle30.copyWith(
                        fontWeight: FontWeight.bold, color: AppColors.kPrimary),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
                        style: Styles.textstyle30.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.kPrimary),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style:
                            Styles.text16.copyWith(color: AppColors.kDarkColor),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: () {
                          GoRouter.of(context).pop();
                        },
                        child: const Text(
                          'Login',
                          style: Styles.text16,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const CustomTextFormFeild(
                    color: AppColors.kDarkColor,
                    hintText: 'firist name',
                    label: Text('firist name'),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const CustomTextFormFeild(
                    color: AppColors.kDarkColor,
                    hintText: 'last name',
                    label: Text('last name'),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  CustomTextFormFeild(
                    color: AppColors.kDarkColor,
                    hintText: 'email or phone numbre',
                    label: const Text('email or phone numbre'),
                    onchanged: (value) {
                      email = value;
                    },
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  CustomTextFeildPassward(
                    onchanged: (value) {
                      password = value;
                    },
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Row1(),
                  const Row2(),
                  const SizedBox(
                    height: 22,
                  ),
                  CustomButton(
                    width: MediaQuery.of(context).size.width,
                    widget: widget!,
                    onTap: () {
                      if (key.currentState!.validate()) {
                        BlocProvider.of<SignUpCubit>(context)
                            .user(email: email!, passward: password!);
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
