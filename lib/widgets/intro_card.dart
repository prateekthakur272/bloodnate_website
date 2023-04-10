import 'package:flutter/material.dart';
import '../constants_and_methods.dart';

class IntroCard extends StatelessWidget {
  const IntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '# What is Bloodnate?',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 4)),
          Text(
            intro,
            style: const TextStyle(color: Colors.white,fontSize: 16),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          const Text(
            '# How it works?',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 4)),
          Text(
            working,
            style: const TextStyle(color: Colors.white,fontSize: 16),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          const Text(
            '# What Bloodnate can do?',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 4)),
          Text(
            canDo,
            style: const TextStyle(color: Colors.white,fontSize: 16),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          const Text(
            '# Why Bloodnate?',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 4)),
          Text(
            why,
            style: const TextStyle(color: Colors.white,fontSize: 16),
          ),
        ],
      ),
    );
  }
}
