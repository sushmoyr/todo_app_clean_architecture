import 'package:cloud_firestore/cloud_firestore.dart';

class Todo {
  final String? id;
  final bool isComplete;
  final String title;
  final String description;
  final Timestamp startAt;
  final Timestamp endAt;
  final List<Todo> subtasks;

//<editor-fold desc="Data Methods">

  const Todo({
    this.id,
    required this.isComplete,
    required this.title,
    required this.description,
    required this.startAt,
    required this.endAt,
    required this.subtasks,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Todo &&
          runtimeType == other.runtimeType &&
          isComplete == other.isComplete &&
          title == other.title &&
          description == other.description &&
          startAt == other.startAt &&
          endAt == other.endAt &&
          subtasks == other.subtasks);

  @override
  int get hashCode =>
      isComplete.hashCode ^
      title.hashCode ^
      description.hashCode ^
      startAt.hashCode ^
      endAt.hashCode ^
      subtasks.hashCode;

  @override
  String toString() {
    return '''
    Todo{ 
      isComplete: $isComplete, 
      title: $title, 
      description: $description, 
      startAt: $startAt, 
      endAt: $endAt, 
      subtasks: $subtasks,}''';
  }

  Todo copyWith({
    String? id,
    bool? isComplete,
    String? title,
    String? description,
    Timestamp? startAt,
    Timestamp? endAt,
    List<Todo>? subtasks,
  }) {
    return Todo(
      id: id ?? this.id,
      isComplete: isComplete ?? this.isComplete,
      title: title ?? this.title,
      description: description ?? this.description,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      subtasks: subtasks ?? this.subtasks,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isComplete': isComplete,
      'title': title,
      'description': description,
      'startAt': startAt,
      'endAt': endAt,
      'subtasks': subtasks,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      isComplete: map['isComplete'] as bool,
      title: map['title'] as String,
      description: map['description'] as String,
      startAt: map['startAt'] as Timestamp,
      endAt: map['endAt'] as Timestamp,
      subtasks: List<Todo>.from(map['subtasks'].map((e) => Todo.fromMap(e))),
    );
  }

//</editor-fold>
}
