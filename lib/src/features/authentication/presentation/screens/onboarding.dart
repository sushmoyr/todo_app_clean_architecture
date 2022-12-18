import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app_clean_architecture/src/core/common_widgets/animated_slogan.dart';
import 'package:todo_app_clean_architecture/src/core/constants/constants.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TODO.',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            verticalGap8,
            Expanded(
              child: AnimatedSlogan(
                slogans: const [
                  'One tool for productivity',
                  'One tool for creativity'
                ],
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: FractionallySizedBox(
                widthFactor: 0.6,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    onPrimary: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Text('Login'),
                ),
              ),
            ),
            verticalGap16,
            Align(
              alignment: Alignment.center,
              child: FractionallySizedBox(
                widthFactor: 0.6,
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Register'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
