import 'package:json_annotation/json_annotation.dart';

import '../../../../core/utils/todo_type.dart';
import '../../domain/entities/todo.dart';

part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel extends Todo {
  const TodoModel({
    required String id,
    required String description,
    required TodoType type,
    required bool isDone,
    required bool isReminded,
    required DateTime startTime,
    required DateTime endTime,
  }) : super(
          id: id,
          description: description,
          type: type,
          isDone: isDone,
          isReminded: isReminded,
          startTime: startTime,
          endTime: endTime,
        );

  TodoModel copyWith({
    String? id,
    String? description,
    TodoType? type,
    bool? isDone,
    bool? isReminded,
    DateTime? startTime,
    DateTime? endTime,
  }) {
    return TodoModel(
      id: id ?? this.id,
      description: description ?? this.description,
      type: type ?? this.type,
      isDone: isDone ?? this.isDone,
      isReminded: isReminded ?? this.isReminded,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
    );
  }

  factory TodoModel.returnObj(Todo todo) {
    return TodoModel(
      id: todo.id,
      description: todo.description,
      type: todo.type,
      isDone: todo.isDone,
      isReminded: todo.isReminded,
      startTime: todo.startTime,
      endTime: todo.endTime,
    );
  }

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);
}
