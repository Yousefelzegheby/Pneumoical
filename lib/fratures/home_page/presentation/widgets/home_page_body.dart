import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/styles.dart';
import 'package:kook/fratures/home_page/presentation/widgets/appbar.dart';
import 'package:kook/fratures/home_page/presentation/widgets/body_item.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
        child: Column(
          children: [
            const AppbarHome(),
            const SizedBox(
              height: 26,
            ),
            ItemBody(
              path: 'lib/assets/pheomonia.png',
              onTap: () {
                GoRouter.of(context).push('/pheumonia');
              },
            ),
            const SizedBox(
              height: 8,
            ),
            ItemBody(
              path: 'lib/assets/suppurt.png',
              onTap: () {
                GoRouter.of(context).push('/support');
              },
            ),
            const SizedBox(
              height: 8,
            ),
            ItemBody(
              path: 'lib/assets/condition.png',
              onTap: () {
                GoRouter.of(context).push('/question');
              },
            ),
            const SizedBox(
              height: 8,
            ),
            ItemBody(
              path: 'lib/assets/contact_us.png',
              onTap: () {
                GoRouter.of(context).push('/contactus');
              },
            ),
          ],
        ),
      ),
    );
  }
}
