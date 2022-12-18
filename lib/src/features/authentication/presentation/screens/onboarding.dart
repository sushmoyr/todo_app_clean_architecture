import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            FractionallySizedBox(
              widthFactor: 0.4,
              alignment: Alignment.topLeft,
              child: Text(
                'Todo, it\'s as simple as that!',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Row(
              children: [
                Spacer(),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ),
                SizedBox(width: 24),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Register'),
                  ),
                ),
                Spacer()
              ],
            )
          ],
        ),
      ),
    );
  }
}
