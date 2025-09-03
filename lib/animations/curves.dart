import 'package:flutter/material.dart';

////////////////////////////////////////////////////
/// #8 Curves
////////////////////////////////////////////////////
class CurvesDemo extends StatelessWidget {
  const CurvesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Curves")),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 50, end: 200),
          duration: const Duration(seconds: 2),
          curve: Curves.bounceOut,
          builder: (context, value, child) {
            return Container(width: value, height: value, color: Colors.blue);
          },
        ),
      ),
    );
  }
}
