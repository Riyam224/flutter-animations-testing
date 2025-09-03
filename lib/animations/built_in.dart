import 'package:flutter/material.dart';

////////////////////////////////////////////////////
/// #2 Built-in Animations
////////////////////////////////////////////////////
class BuiltInAnimationsDemo extends StatefulWidget {
  const BuiltInAnimationsDemo({super.key});

  @override
  State<BuiltInAnimationsDemo> createState() => _BuiltInAnimationsDemoState();
}

class _BuiltInAnimationsDemoState extends State<BuiltInAnimationsDemo> {
  bool _toggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Built-in Animations")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() => _toggled = !_toggled);
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: _toggled ? 200 : 100,
            height: _toggled ? 100 : 200,
            color: _toggled ? Colors.blue : Colors.red,
            alignment: Alignment.center,
            child: AnimatedOpacity(
              opacity: _toggled ? 1.0 : 0.3,
              duration: const Duration(seconds: 1),
              child: const Text(
                "Tap Me",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
