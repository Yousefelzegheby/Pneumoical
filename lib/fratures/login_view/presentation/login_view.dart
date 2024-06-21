import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/styles.dart';
import 'package:kook/core/widgets/customButton.dart';
import 'package:kook/core/widgets/custom_text_feild.dart';
import 'package:kook/core/widgets/custom_textfeild_password.dart';
import 'package:kook/fratures/login_view/presentation/manager/cubit/login_cubit.dart';
import 'package:kook/fratures/login_view/presentation/widget/login_sec2.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'pneumoical',
                style: Styles.textstyle30.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.kPrimary),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'lib/assets/img.png',
                      scale: 1.12,
                    ),
                  ],
                ),
              ),
              const LoginSec2(),
            ],
          ),
        ),
      ),
    );
  }
}
