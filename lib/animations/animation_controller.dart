
import 'package:flutter/material.dart';

////////////////////////////////////////////////////
/// #6 Animation Controllers
////////////////////////////////////////////////////
class AnimationControllerDemo extends StatefulWidget {
  const AnimationControllerDemo({super.key});

  @override
  State<AnimationControllerDemo> createState() => _AnimationControllerDemoState();
}

class _AnimationControllerDemoState extends State<AnimationControllerDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animation Controller")),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: 1 + _controller.value,
              child: child,
            );
          },
          child: Container(width: 100, height: 100, color: Colors.green),
        ),
      ),
    );
  }
}