import 'dart:async';

import 'package:flutter/material.dart';

import 'animated_text.dart';

class AnimatedSlogan extends StatefulWidget {
  const AnimatedSlogan({
    Key? key,
    required this.slogans,
    this.style,
  })  : assert(slogans.length != 0, 'Slogans can not be empty'),
        super(key: key);

  final List<String> slogans;
  final TextStyle? style;

  @override
  State<AnimatedSlogan> createState() => _AnimatedSloganState();
}

class _AnimatedSloganState extends State<AnimatedSlogan> {
  int currentIndex = 0;

  late final Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % widget.slogans.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedText(
      text: widget.slogans[currentIndex],
      style: widget.style,
    );
  }
}
