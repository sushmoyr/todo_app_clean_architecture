import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_clean_architecture/src/core/common_widgets/switcher_tab.dart';
import 'package:todo_app_clean_architecture/src/core/constants/constants.dart';

class RegisterDialog extends ConsumerWidget {
  const RegisterDialog({
    Key? key,
  }) : super(key: key);

  static void show(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, anim, sAnim) => const RegisterDialog(),
        transitionDuration: const Duration(milliseconds: 400),
        reverseTransitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (_, animation, __, page) {
          final positionTween =
              Tween(begin: const Offset(0, 1), end: Offset.zero);
          final entryCurve = CurvedAnimation(
              parent: animation, curve: emphasizedDecelerateCurve);
          final outroCurve = CurvedAnimation(
              parent: animation, curve: emphasizedAccelerateCurve);
          late CurvedAnimation currentCurve;
          if (animation.status == AnimationStatus.forward) {
            currentCurve = entryCurve;
          } else {
            currentCurve = outroCurve;
          }
          return SlideTransition(
            position: positionTween.animate(currentCurve),
            child: FadeTransition(opacity: currentCurve, child: page),
          );
        },
        barrierDismissible: true,
        barrierColor: Colors.black26,
        opaque: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      insetPadding: EdgeInsets.only(
        top: MediaQuery.of(context).viewPadding.top + 24,
        bottom: 24,
        left: 24,
        right: 24,
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Register',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            verticalGap24,
            SwitcherTab(
              tabData: [
                SwitcherTabData(
                  label: 'Email/Password',
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      verticalGap16,
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      verticalGap16,
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                SwitcherTabData(
                  label: 'Phone',
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Phone'),
                  ),
                ),
              ],
            ),
            verticalGap16,
            ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  'Forgot Password?',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Reset here'),
                ),
              ],
            )
            // RichText(
            //   text: TextSpan(
            //     children: [TextSpan(text: 'Forgot Password?')],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
