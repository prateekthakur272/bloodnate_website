import 'package:bloodnate_website/components/about_app.dart';
import 'package:bloodnate_website/components/banner.dart';
import 'package:bloodnate_website/components/home_header.dart';
import 'package:bloodnate_website/constants_and_methods.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Bloodnate'),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HomeHeader(),
            SizedBox(height:48),
            ImageBanner(),
            SizedBox(height: 48),
            AboutApp()
          ],
        ),
      ),
    );
  }
}