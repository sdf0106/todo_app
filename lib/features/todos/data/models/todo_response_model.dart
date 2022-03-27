import 'package:json_annotation/json_annotation.dart';

import 'todo_model.dart';

part 'todo_response_model.g.dart';

@JsonSerializable()
class TodoResponseModel {
  final List<TodoModel> todos;
  TodoResponseModel({
    required this.todos,
  });
  factory TodoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TodoResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoResponseModelToJson(this);
}
