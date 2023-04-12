import 'package:bloodnate_website/constants_and_methods.dart';
import 'package:bloodnate_website/widgets/info_card.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(isDesktop(context)?48:24),
      child: isDesktop(context)?const Desktop():const Mobile(),
    );
  }
}

class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(flex:1,child: Center(child: Image.asset('assets/1.png',height: 500,))),
            Expanded(flex:2,child: InfoCard(title: '#What is Bloodnate', content: '$intro\n\n$working'))
          ],
        ),
        Row(
          children: [
            Expanded(flex:2,child: InfoCard(title: '#Find Blood', content: findBlood)),
            Expanded(flex:1,child: Center(child: Image.asset('assets/2.png',height: 500,))),
          ],
        ),
        Row(
          children: [
            Expanded(flex:1,child: Center(child: Image.asset('assets/3.png',height: 500,))),
            Expanded(flex:2,child: InfoCard(title: '#Donate Blood', content: donateBlood)),
          ],
        ),
      ],
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InfoCard(title: '#What is Bloodnate', content: '$intro\n\n$working'),
        Image.asset('assets/1.png',height: 300,),
        const SizedBox(height: 24,),
        InfoCard(title: '#Find Blood', content: findBlood),
        Image.asset('assets/2.png',height: 300,),
        const SizedBox(height: 24,),
        InfoCard(title: '#Donate Blood', content: donateBlood),
        Image.asset('assets/3.png',height: 300,),
      ],
    );
  }
}