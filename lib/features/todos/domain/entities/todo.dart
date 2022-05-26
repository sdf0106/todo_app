import 'package:equatable/equatable.dart';

import '../../../../core/utils/todo_type.dart';

class Todo extends Equatable {
  final String id;
  final String description;
  final TodoType type;
  final bool isDone;
  final bool isReminded;
  final DateTime startTime;
  final DateTime endTime;
  const Todo({
    required this.type,
    required this.id,
    required this.description,
    required this.isDone,
    required this.isReminded,
    required this.startTime,
    required this.endTime,
  });
  Todo copyWith({
    String? id,
    String? description,
    TodoType? type,
    bool? isDone,
    bool? isReminded,
    DateTime? startTime,
    DateTime? endTime,
  }) {
    return Todo(
      id: id ?? this.id,
      description: description ?? this.description,
      type: type ?? this.type,
      isDone: isDone ?? this.isDone,
      isReminded: isReminded ?? this.isReminded,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
    );
  }

  @override
  List<Object?> get props => [
        id,
        description,
        type,
        isDone,
        isReminded,
        startTime,
        endTime,
      ];
}
