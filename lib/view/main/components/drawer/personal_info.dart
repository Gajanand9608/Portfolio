import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        // AreaInfoText(title: 'Contact', text: '03166657602'),
        AreaInfoText(title: 'Email', text: 'gajanandsharmajsr@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@gsharma9608'),
        AreaInfoText(title: 'Github', text: '@Gajanand9608'),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
