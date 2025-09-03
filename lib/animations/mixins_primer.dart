import 'package:flutter/material.dart';

////////////////////////////////////////////////////
/// #5 Mixins Primer
////////////////////////////////////////////////////
class MixinsDemo extends StatefulWidget {
  const MixinsDemo({super.key});

  @override
  State<MixinsDemo> createState() => _MixinsDemoState();
}

class _MixinsDemoState extends State<MixinsDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mixins Primer")),
      body: Center(
        child: RotationTransition(
          turns: _controller,
          child: Container(width: 100, height: 100, color: Colors.deepOrange),
        ),
      ),
    );
  }
}
