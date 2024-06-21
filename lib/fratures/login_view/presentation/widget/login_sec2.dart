import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kook/core/snakbar.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/styles.dart';
import 'package:kook/core/widgets/customButton.dart';
import 'package:kook/core/widgets/custom_text_feild.dart';
import 'package:kook/core/widgets/custom_textfeild_password.dart';
import 'package:kook/fratures/login_view/presentation/manager/cubit/login_cubit.dart';

class LoginSec2 extends StatefulWidget {
  const LoginSec2({super.key});

  @override
  State<LoginSec2> createState() => _LoginSec2State();
}

String? email;
String? password;
Widget? widget;

class _LoginSec2State extends State<LoginSec2> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> key = GlobalKey();
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFaliur) {
          showsnakbar(context, state.emessage);
        } else if (state is LoginSucces) {
          GoRouter.of(context).push('/homepage');
        }
      },
      builder: (context, state) {
        if (state is LoginLooding) {
          widget = const CircularProgressIndicator(
            color: AppColors.kLightColor,
          );
        } else {
          widget = const Text(
            'Log In',
            style: Styles.text25,
          );
        }
        return Form(
          key: key,
          child: Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Log In',
                  style: Styles.textstyle30.copyWith(
                      fontWeight: FontWeight.bold, color: AppColors.kPrimary),
                ),
                CustomTextFormFeild(
                  color: AppColors.kDarkColor,
                  hintText: 'Email or Phone numbre',
                  keyboardType: TextInputType.emailAddress,
                  label: const Text('email(required)'),
                  onchanged: (value) {
                    email = value;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFeildPassward(
                  onchanged: (value) {
                    password = value;
                  },
                ),
                const SizedBox(
                  height: 9,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget password',
                      style: Styles.text16,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 9,
                ),
                CustomButton(
                  width: MediaQuery.of(context).size.width,
                  widget: widget!,
                  onTap: () {
                    if (key.currentState!.validate()) {
                      BlocProvider.of<LoginCubit>(context)
                          .login(email: email!, passward: password!);
                    }
                  },
                ),
                const SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style:
                          Styles.text16.copyWith(color: AppColors.kDarkColor),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      child: const Text('Sign Up', style: Styles.text16),
                      onTap: () {
                        GoRouter.of(context).push('/signup');
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
