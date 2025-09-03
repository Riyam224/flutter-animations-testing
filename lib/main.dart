import 'package:flutter/material.dart';
import 'package:trip_animation/home.dart';

void main() {
  runApp(const AnimatedTestingApp());
}

class AnimatedTestingApp extends StatelessWidget {
  const AnimatedTestingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja Trips',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: const Home(),
    );
  }
}
