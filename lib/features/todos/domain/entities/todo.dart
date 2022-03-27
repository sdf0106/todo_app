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
