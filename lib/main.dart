import 'package:bloodnate_website/pages/homepage.dart';
import 'package:bloodnate_website/theme_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloodnate',
      theme: ThemeData(
        primarySwatch: black,
        primaryColor: Colors.black,
        canvasColor: Colors.black,

      ),
      home: const HomePage(),
    );
  }
}
