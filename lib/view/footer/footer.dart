import 'package:flutter/material.dart';
import 'package:portfolio/view%20model/responsive.dart';
import 'package:portfolio/view/footer/components/name.dart';
import 'package:portfolio/view/main/components/drawer/contact_icons.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    var sz = MediaQuery.of(context).size;
    return SizedBox(
      height: sz.height * 0.2,
      child: Column(
        children: [
          const ContactIcon(),
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              '© ALL RIGHTS RESERVED.',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  wordSpacing: 2,
                  fontSize: 12),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Designed by '),
              ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(colors: [
                    Colors.pink,
                    Colors.blue,
                  ]).createShader(bounds);
                },
                child: const Responsive(
                  desktop: AnimatedNameText(
                      start: 30, end: 40, text: 'Gajanand ', gradient: false),
                  largeMobile: AnimatedNameText(
                      start: 30, end: 25, text: 'Gajanand ', gradient: false),
                  mobile: AnimatedNameText(
                      start: 25, end: 20, text: 'Gajanand ', gradient: true),
                  tablet: AnimatedNameText(
                      start: 40, end: 30, text: 'Gajanand ', gradient: false),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
