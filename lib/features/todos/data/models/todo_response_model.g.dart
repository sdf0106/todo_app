// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoResponseModel _$TodoResponseModelFromJson(Map<String, dynamic> json) =>
    TodoResponseModel(
      todos: (json['todos'] as List<dynamic>)
          .map((e) => TodoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TodoResponseModelToJson(TodoResponseModel instance) =>
    <String, dynamic>{
      'todos': instance.todos,
    };
