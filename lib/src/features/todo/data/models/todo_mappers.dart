import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app_clean_architecture/src/features/todo/domain/entities/todo.dart';

extension SnapshotX on DocumentSnapshot<Map<String, dynamic>> {
  Todo toTodoModel() {
    String id = this.id;
    final data = this.data();
    if (data != null) {
      return Todo.fromMap(data).copyWith(id: id);
    }
    throw Exception('No document exist on this reference');
  }
}
