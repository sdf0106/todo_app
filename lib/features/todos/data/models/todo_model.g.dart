// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) => TodoModel(
      id: json['id'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$TodoTypeEnumMap, json['type']),
      isDone: json['isDone'] as bool,
      isReminded: json['isReminded'] as bool,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$TodoModelToJson(TodoModel instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'type': _$TodoTypeEnumMap[instance.type],
      'isDone': instance.isDone,
      'isReminded': instance.isReminded,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
    };

const _$TodoTypeEnumMap = {
  TodoType.personal: 'personal',
  TodoType.work: 'work',
  TodoType.meeting: 'meeting',
  TodoType.shopping: 'shopping',
  TodoType.study: 'study',
};
