import 'package:flutter/material.dart';
import 'package:kook/core/utilies/colors.dart';
import 'package:kook/core/utilies/styles.dart';
import 'package:kook/fratures/contact_us/presentation/widgets/contact_item.dart';
import 'package:kook/fratures/contact_us/presentation/widgets/contact_us_appbar.dart';

class ContactUsBody extends StatelessWidget {
  const ContactUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 40),
          child: ContactUsAppbar(),
        ),
        const SizedBox(
          height: 43,
        ),
        Expanded(
          child: Card(
              color: AppColors.kLightColor,
              elevation: 15,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'You can follow and',
                            style: Styles.textstyle20.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.kPrimary,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'contact us via',
                            style: Styles.textstyle20.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.kPrimary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ContactItem(
                            url: 'pneumoical@gmail.com',
                            image: 'lib/assets/g mail.png',
                          ),
                          ContactItem(
                            url:
                                'https://www.facebook.com/profile.php?id=61561216763880&mibextid=ZbWKwL',
                            image: 'lib/assets/Face.png',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContactItem(
                            url:
                                'https://whatsapp.com/channel/0029VadGrszJuyABLNgPm520',
                            image: 'lib/assets/Whats.png',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ContactItem(
                            url:
                                'https://www.instagram.com/pneumoical?igsh=bGZzajVhYWhkdDNt',
                            image: 'lib/assets/insta.png',
                          ),
                          ContactItem(
                            url:
                                'https://x.com/pneumoical76783?t=pspjNB7iN-YSneskwrrenQ&s=08',
                            image: 'lib/assets/Twitter.png',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContactItem(
                            url:
                                'https://youtube.com/@pneumoical?si=281o6v_mqMwdxSiy',
                            image: 'lib/assets/you.png',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ContactItem(
                            url: 'https://t.me/Pneumoical',
                            image: 'lib/assets/telegram.png',
                          ),
                          ContactItem(
                            url:
                                'https://www.linkedin.com/in/pneumoical-app-210282314?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
                            image: 'lib/assets/link.png',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContactItem(
                            url: 'https://www.threads.net/@pneumoical',
                            image: 'lib/assets/th.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        )
      ],
    );
  }
}
