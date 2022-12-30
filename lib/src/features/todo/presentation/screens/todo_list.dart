import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app_clean_architecture/src/features/todo/domain/entities/todo.dart';
import 'package:todo_app_clean_architecture/src/features/todo/presentation/widgets/todo_tile.dart';

class TodoListPage extends ConsumerWidget {
  const TodoListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            title: const Text('Your Todos'),
            floating: true,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (ctx, idx) {
                final todo = samples[idx];
                return TodoTile(todo: todo);
              },
              childCount: samples.length,
            ),
          ),
        ],
      ),
    );
  }
}

List<Todo> samples = [
  Todo(
      isComplete: false,
      title: 'Do shopping',
      description: 'shop for winter products',
      startAt: Timestamp.now(),
      endAt: Timestamp.fromDate(DateTime.now().add(Duration(hours: 4))),
      subtasks: []),
  Todo(
      isComplete: false,
      title: 'Do simping',
      description: 'simp for girls',
      startAt: Timestamp.now(),
      endAt: Timestamp.fromDate(DateTime.now().add(Duration(hours: 4))),
      subtasks: []),
  Todo(
      isComplete: false,
      title: 'Do running',
      description: 'run to loose weight',
      startAt: Timestamp.now(),
      endAt: Timestamp.fromDate(DateTime.now().add(Duration(hours: 4))),
      subtasks: []),
];
