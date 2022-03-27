import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/core/utils/todo_type.dart';

import '../../features/todos/data/models/todo_model.dart';
import '../../features/todos/domain/entities/todo.dart';
import 'constants.dart';

class LocalDB {
  // static Future<void> checkLocalDB({required SharedPreferences prefs}) async {
  //   try {
  //     final jsonList = prefs.getStringList(CACHED_TODOS);
  //   } catch (error) {
  //     List<String> emptyList = [];
  //     await prefs.setStringList(CACHED_TODOS, emptyList);
  //   }
  // }

  static Future<SharedPreferences> initializeDB() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> list = [
      Todo(
        description: 'asd',
        endTime: DateTime.now().add(const Duration(hours: 1)),
        id: DateTime.now().toString(),
        isDone: false,
        isReminded: false,
        startTime: DateTime.now(),
        type: TodoType.work,
      ).toString(),
    ];
    prefs.setStringList(CACHED_TODOS, list);
    return prefs;
  }

  static Future<List<TodoModel>> getListOfTodos(
      SharedPreferences sharedPreferences) {
    final jsonList = sharedPreferences.getStringList(CACHED_TODOS);
    // if (jsonList == null) {
    //   List<String> list = [
    //     Todo(
    //       description: 'asd',
    //       endTime: DateTime.now().add(const Duration(hours: 1)),
    //       id: DateTime.now().toString(),
    //       isDone: false,
    //       isReminded: false,
    //       startTime: DateTime.now(),
    //       type: TodoType.work,
    //     ).toString(),
    //   ];
    //   sharedPreferences.setStringList(CACHED_TODOS, list);
    // }
    List<TodoModel> todosUnparsed =
        jsonList!.map((e) => TodoModel.fromJson(jsonDecode(e))).toList();

    return Future.value(todosUnparsed);
  }

  static Future<void> cacheListOfTodos({
    required SharedPreferences sharedPreferences,
    required List<String> list,
  }) async {
    sharedPreferences.setStringList(CACHED_TODOS, list);
  }
}
