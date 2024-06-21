import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/static_const.dart';
import 'package:kook/core/utilies/styles.dart';
import 'package:kook/fratures/pheumonia/presentation/widgets/animation_container.dart';
import 'package:kook/fratures/pheumonia/presentation/widgets/pneumonia_appbar.dart';
import 'package:kook/fratures/pheumonia/presentation/widgets/pnumonia_item.dart';

class PneumoniaBody extends StatefulWidget {
  const PneumoniaBody({super.key});

  @override
  State<PneumoniaBody> createState() => _PneumoniaBodyState();
}

double? height = 0;
double? height4 = 0;
double? height2 = 0;
double? height3 = 0;
double? height5 = 0;
double? height6 = 0;
double? height7 = 0;
double? height8 = 0;
double? height9 = 0;
double? height10 = 0;

class _PneumoniaBodyState extends State<PneumoniaBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 66, right: 24, left: 24),
        child: Column(
          children: [
            const PneumoniaAppbar(),
            const SizedBox(
              height: 40,
            ),
            PenumoniaItem(
              text: 'Pneumonia Definition',
              onTap: () {
                height != 0 ? height = 0 : height = 230;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AnimationContainer(
              height: height,
              text: Static.definition,
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.kDarkColor,
            ),
            const SizedBox(
              height: 24,
            ),
            PenumoniaItem(
              text: 'Risk factors',
              onTap: () {
                height2 != 0 ? height2 = 0 : height2 = 370;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AnimationContainer(
              height: height2,
              text: Static.risk,
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.kDarkColor,
            ),
            const SizedBox(
              height: 24,
            ),
            PenumoniaItem(
              text: 'Types of pneumonia',
              onTap: () {
                height3 != 0 ? height3 = 0 : height3 = 150;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AnimationContainer(
              height: height3,
              text: Static.type,
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.kDarkColor,
            ),
            const SizedBox(
              height: 24,
            ),
            PenumoniaItem(
              text: 'Cause',
              onTap: () {
                height4 != 0 ? height4 = 0 : height4 = 730;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AnimationContainer(
              height: height4,
              text: Static.cause,
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.kDarkColor,
            ),
            const SizedBox(
              height: 24,
            ),
            PenumoniaItem(
              text: 'Symptoms',
              onTap: () {
                height5 != 0 ? height5 = 0 : height5 = 450;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AnimationContainer(
              height: height5,
              text: Static.symptoms,
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.kDarkColor,
            ),
            const SizedBox(
              height: 24,
            ),
            PenumoniaItem(
              text: 'Complications',
              onTap: () {
                height6 != 0 ? height6 = 0 : height6 = 500;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AnimationContainer(
              height: height6,
              text: Static.complications,
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.kDarkColor,
            ),
            const SizedBox(
              height: 24,
            ),
            PenumoniaItem(
              text: 'Suspiction of disease',
              onTap: () {
                height7 != 0 ? height7 = 0 : height7 = 530;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AnimationContainer(
              height: height7,
              text: Static.suspiction,
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.kDarkColor,
            ),
            const SizedBox(
              height: 24,
            ),
            PenumoniaItem(
              text: 'Prevention',
              onTap: () {
                height8 != 0 ? height8 = 0 : height8 = 470;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AnimationContainer(
              height: height8,
              text: Static.prevention,
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.kDarkColor,
            ),
            const SizedBox(
              height: 24,
            ),
            PenumoniaItem(
              text: 'Treatment',
              onTap: () {
                height9 != 0 ? height9 = 0 : height9 = 550;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AnimationContainer(
              height: height9,
              text: Static.treatment,
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.kDarkColor,
            ),
            const SizedBox(
              height: 24,
            ),
            PenumoniaItem(
              text: 'Hospitalization',
              onTap: () {
                height10 != 0 ? height10 = 0 : height10 = 430;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AnimationContainer(
              height: height10,
              text: Static.hospitalization,
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.kDarkColor,
            ),
          ],
        ),
      ),
    );
  }
}
