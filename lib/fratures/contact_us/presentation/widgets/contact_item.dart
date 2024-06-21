import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required this.url, required this.image});
  final String url;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        try {
          await launch(url);
        } catch (e) {
          print(e.toString());
        }
      },
      child: SizedBox(
        width: 80,
        height: 80,
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}
