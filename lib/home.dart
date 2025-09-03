import 'package:flutter/material.dart';
import 'package:trip_animation/animations/animated_list.dart';
import 'package:trip_animation/animations/animation_controller.dart';
import 'package:trip_animation/animations/built_in.dart';
import 'package:trip_animation/animations/curves.dart';
import 'package:trip_animation/animations/hero.dart';
import 'package:trip_animation/animations/intro_demo.dart';
import 'package:trip_animation/animations/mixins_primer.dart';
import 'package:trip_animation/animations/staggered_list.dart';
import 'package:trip_animation/animations/tween_animation_builder.dart';
import 'package:trip_animation/animations/tween_sequences.dart';
import 'package:trip_animation/models/trips_model.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // todo

    final topics = [
      AnimationTopic("Intro & Setup", const IntroDemo()),
      AnimationTopic("Built-in Animations", const BuiltInAnimationsDemo()),
      AnimationTopic("Tween Animation Builder", const TweenBuilderDemo()),
      AnimationTopic("Hero Animations", const HeroDemo()),
      AnimationTopic("Mixins Primer", const MixinsDemo()),
      AnimationTopic("Animation Controllers", const AnimationControllerDemo()),
      AnimationTopic("Tween Sequences", const TweenSequenceDemo()),
      AnimationTopic("Curves", const CurvesDemo()),
      AnimationTopic("Animated List", const AnimatedListDemo()),
      AnimationTopic("Staggered List", const StaggeredListDemo()),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Animation Gallery"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: topics.length,
        itemBuilder: (context, index) {
          final topic = topics[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(
                topic.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => topic.screen),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
