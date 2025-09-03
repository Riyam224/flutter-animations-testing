import 'package:flutter/material.dart';

////////////////////////////////////////////////////
/// #4 Hero Animations
////////////////////////////////////////////////////
class HeroDemo extends StatelessWidget {
  const HeroDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero Animation")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const HeroDetailScreen()),
            );
          },
          child: Hero(
            tag: "hero-box",
            child: Container(width: 100, height: 100, color: Colors.orange),
          ),
        ),
      ),
    );
  }
}

class HeroDetailScreen extends StatelessWidget {
  const HeroDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero Detail")),
      body: Center(
        child: Hero(
          tag: "hero-box",
          child: Container(width: 300, height: 300, color: Colors.orange),
        ),
      ),
    );
  }
}
