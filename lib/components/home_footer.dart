import 'package:bloodnate_website/constants_and_methods.dart';
import 'package:bloodnate_website/widgets/link.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(isDesktop(context)?48:24),
      color: Colors.red.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const LinkText(label: 'Contact Us', url: 'https://contact.prateekthakur.dev',icon: FontAwesomeIcons.link,),
          const LinkText(label: 'GitHub', url: 'https://github.com/prateekthakur272',icon:FontAwesomeIcons.github),
          const SizedBox(height: 24,),
          watermark
        ],
      ),
    );
  }
}