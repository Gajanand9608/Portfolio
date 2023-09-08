import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
              onPressed: () async {
                await launchUrl(
                    Uri.parse('https://www.linkedin.com/in/gsharma9608/'));
              },
              icon: SvgPicture.asset('assets/icons/linkedin.svg')),
          IconButton(
              onPressed: () async {
                await launchUrl(Uri.parse('https://github.com/Gajanand9608'));
              },
              icon: SvgPicture.asset('assets/icons/github.svg')),
          IconButton(
              onPressed: () {
                // String email = "gajanandsharmajsr@gmail.com";
                // Uri mail = Uri.parse("mailto:$email");
                // await launchUrl(mail);
                try {
                  String email = "gajanandsharmajsr@gmail.com";
                  // Uri mail = Uri.parse("mailto:$email");
                  Clipboard.setData(ClipboardData(text: email));
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Email copied'),
                    backgroundColor: Colors.transparent,
                    duration: Duration(milliseconds: 1000),
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding, vertical: defaultPadding),
                  ));
                  // if (await canLaunchUrl(mail)) {
                  //   // print('here');
                  //   launchUrl(mail);
                  // }
                  // await launchUrl(mail);
                } catch (e) {
                  // print("Error launching email: $e");
                }
              },
              icon: SvgPicture.asset(
                'assets/icons/email.svg',
                height: 30,
                width: 30,
              )),
          const Spacer(),
        ],
      ),
    );
  }
}
