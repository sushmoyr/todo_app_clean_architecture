import 'package:flutter/material.dart';
import 'package:todo_app_clean_architecture/src/features/authentication/presentation/screens/register_dialog.dart';

import '../features/authentication/presentation/screens/onboarding.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Onboarding(),
    );
  }
}
