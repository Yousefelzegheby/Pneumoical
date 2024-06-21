import 'package:flutter/material.dart';

class AnimationContainer extends StatefulWidget {
  const AnimationContainer({super.key, this.height, required this.text});
  final double? height;
  final String text;
  @override
  State<AnimationContainer> createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: MediaQuery.of(context).size.width,
      height: widget.height,
      duration: const Duration(microseconds: 3),
      child: Text(widget.text),
    );
  }
}
