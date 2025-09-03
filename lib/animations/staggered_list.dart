import 'package:flutter/material.dart';

////////////////////////////////////////////////////
/// #10 Staggered List Animations
////////////////////////////////////////////////////
class StaggeredListDemo extends StatelessWidget {
  const StaggeredListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(5, (i) => "Item ${i + 1}");

    return Scaffold(
      appBar: AppBar(title: const Text("Staggered List")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0, end: 1),
            duration: Duration(milliseconds: 500 + index * 200),
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(0, 50 * (1 - value)),
                  child: child,
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(12),
              child: ListTile(title: Text(items[index])),
            ),
          );
        },
      ),
    );
  }
}
