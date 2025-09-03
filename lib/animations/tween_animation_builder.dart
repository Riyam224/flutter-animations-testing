import 'package:flutter/material.dart';

////////////////////////////////////////////////////
/// #3 Tween Animation Builder
////////////////////////////////////////////////////
class TweenBuilderDemo extends StatelessWidget {
  const TweenBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tween Animation Builder")),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 200),
          duration: const Duration(seconds: 2),
          builder: (context, size, child) {
            return Container(
              width: size,
              height: size,
              color: Colors.purple,
              child: const Center(
                child: Text(
                  "Growing Box",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
