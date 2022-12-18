import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({
    Key? key,
    this.animation,
    required this.text,
    this.duration = const Duration(seconds: 3),
    this.style,
    this.curve,
  }) : super(key: key);

  final Animation<double>? animation;
  final String text;
  final Duration duration;
  final TextStyle? style;
  final Curve? curve;

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.duration.inMilliseconds ~/ 3),
      reverseDuration:
          Duration(milliseconds: widget.duration.inMilliseconds ~/ 3),
    );
    runAnimation();
  }

  void runAnimation() {
    void startAnimationFromBeginning() {
      controller.forward();

      controller.addStatusListener((status) async {
        switch (status) {
          case AnimationStatus.dismissed:
          case AnimationStatus.forward:
          case AnimationStatus.reverse:
            break;
          case AnimationStatus.completed:
            await Future.delayed(widget.duration -
                (controller.duration! + controller.reverseDuration!));
            controller.reverse();
            break;
        }
      });
    }

    if (!controller.isAnimating) {
      startAnimationFromBeginning();
    } else {
      switch (controller.status) {
        case AnimationStatus.dismissed:
        case AnimationStatus.forward:
        case AnimationStatus.reverse:
          controller
              .reverse(from: controller.value)
              .whenComplete(startAnimationFromBeginning);
          break;
        case AnimationStatus.completed:
          startAnimationFromBeginning();
          break;
      }
    }
  }

  @override
  void didUpdateWidget(covariant AnimatedText oldWidget) {
    super.didUpdateWidget(oldWidget);
    runAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: CurvedAnimation(
          parent: controller,
          curve: widget.curve ?? Curves.fastLinearToSlowEaseIn),
      builder: (context, child) {
        int textLength = widget.text.length;
        int currentLength = (textLength * controller.value).round();
        return Text(
          widget.text.substring(0, currentLength),
          style: widget.style,
        );
      },
    );
  }
}
