import 'package:bloodnate_website/components/about_app.dart';
import 'package:bloodnate_website/components/banner.dart';
import 'package:bloodnate_website/components/home_footer.dart';
import 'package:bloodnate_website/components/home_header.dart';
import 'package:bloodnate_website/constants_and_methods.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Bloodnate'),
      body: ListView(
        children:[
          const HomeHeader(),
          if(isDesktop(context))
          const ImageBanner(),
          const AboutApp(),
          const HomeFooter()
        ],
      )
    );
  }
}