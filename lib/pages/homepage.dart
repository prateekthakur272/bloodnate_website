import 'package:bloodnate_website/components/home_header.dart';
import 'package:bloodnate_website/constants_and_methods.dart';
import 'package:bloodnate_website/widgets/info_card.dart';
import 'package:bloodnate_website/widgets/intro_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Bloodnate'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const HomeHeader(),
            const SizedBox(height: 64),
            Row(
              children: [
                const Expanded(
                    flex: 5,
                    child: IntroCard()),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                Flexible(
                    flex: 2,
                    child: Container(
                        constraints: const BoxConstraints(maxHeight: 600),
                        child: Center(child: Image.asset('assets/1.png',))))
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                Flexible(
                    flex: 2,
                    child: Container(
                        constraints: const BoxConstraints(maxHeight: 600),
                        child: Center(child: Image.asset('assets/2.png',)))),
                Expanded(
                    flex: 5,
                    child: InfoCard(title: '# Find blood centers nearby', content: findBlood)),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 5,
                    child: InfoCard(title: '# Donate Blood', content: donateBlood)),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                Flexible(
                    flex: 2,
                    child: Container(
                        constraints: const BoxConstraints(maxHeight: 600),
                        child: Center(child: Image.asset('assets/3.png',))))
              ],
            ),
            // Row(
            //   children: [
            //     const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            //     Flexible(
            //         flex: 2,
            //         child: Container(
            //             constraints: const BoxConstraints(maxHeight: 600),
            //             child: Center(child: Image.asset('assets/4.png',)))),
            //     const Expanded(
            //         flex: 5,
            //         child: IntroCard()),
            //   ],
            // ),
            //Container(height: 400,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}