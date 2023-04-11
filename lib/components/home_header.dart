import 'package:bloodnate_website/constants_and_methods.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    if(isMobile(context) || isTablet(context)){
      return const Mobile();
    }
    return const Desktop();
  }
}

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(48),
      child: Row(
        children: const [
          Expanded(
            child: Content()
          ),
          Expanded(
              child: BloodnateImage()
          )
        ],
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: const [
          Content(),
          SizedBox(height: 32,),
          BloodnateImage()
        ],
      ),
    );
  }
}

class BloodnateImage extends StatelessWidget {
  const BloodnateImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Stack(
    alignment: AlignmentDirectional.center,
    children: [
      Image.asset(
        'assets/curls.png',
        height: isMobile(context)?300:500,
      ),
      Image.asset(
        'assets/0.png',
        height: isMobile(context)?300:500,
      ),
      Image.asset(
        'assets/cone.png',
        height: isMobile(context)?300:500,
      )
    ],
            ),
          );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/bloodnate_logo.png',
              height: 48,
            ),
            const Text(
              'Bloodnate',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          'Launching\nSoon...',
          style: TextStyle(
              color: Colors.white,
              fontSize: (isDesktop(context)?72:48),
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          tagLine,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              overflow: TextOverflow.visible),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          desc,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              overflow: TextOverflow.visible),
        ),
        const SizedBox(
          height: 24,
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
                vertical: 20, horizontal: 32),
            side: BorderSide(color: Colors.red.shade300, width: 2),
          ),
          child: const Text(
            'Contact us',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        )
      ],
    );
  }
}