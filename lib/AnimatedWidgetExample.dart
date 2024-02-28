import 'package:animated_widget/spinningContainer.dart';
import 'package:flutter/material.dart';

class AnimatedWidgetExample extends StatefulWidget {
  const AnimatedWidgetExample({super.key});

  @override
  State<AnimatedWidgetExample> createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample>  with TickerProviderStateMixin{

  late final _animatedController = AnimationController(
      vsync: this,
    duration: const Duration(seconds: 5)
  )..repeat();

  void dispose(){
    _animatedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SpinningConainer(controller: _animatedController);
  }
}