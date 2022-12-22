import 'package:flutter/material.dart';
import 'package:todo_app_clean_architecture/src/features/todo/domain/entities/todo.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({Key? key, required this.todo}) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(todo.id),
      child: ListTile(
        title: Text(todo.title),
        subtitle: Text(todo.description),
      ),
      onDismissed: (direction) {
        print(direction);
      },
    );
  }
}
