import 'package:flutter/material.dart';

////////////////////////////////////////////////////
/// #1 Intro & Setup
////////////////////////////////////////////////////
class IntroDemo extends StatelessWidget {
  const IntroDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Intro & Setup")),
      body: const Center(
        child: Text(
          "Welcome to the Flutter Animation Gallery!\n\n"
          "Explore different animation techniques from tutorials 1–10.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
