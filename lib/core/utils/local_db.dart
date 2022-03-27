import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/core/utils/todo_type.dart';

import '../../features/todos/data/models/todo_model.dart';
import '../../features/todos/domain/entities/todo.dart';
import 'constants.dart';

class LocalDB {
  static Future<SharedPreferences> initializeDB() async {
    final prefs = await SharedPreferences.getInstance();
    List<Todo> list = [
      TodoModel(
        description: 'asd',
        endTime: DateTime.now().add(const Duration(hours: 1)),
        id: DateTime.now().toString(),
        isDone: false,
        isReminded: false,
        startTime: DateTime.now(),
        type: TodoType.work,
      ),
    ];
    prefs.setString(CACHED_TODOS, json.encode(list));
    return prefs;
  }

  static Future<List<TodoModel>> getListOfTodos(
      SharedPreferences sharedPreferences) {
    final jsonList = sharedPreferences.getString(CACHED_TODOS);

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
    // List<TodoModel> todosUnparsed =
    //     jsonList!.map((e) => TodoModel.fromJson(jsonDecode(e))).toList();
    List<TodoModel> todoUnparsed = [];
    var list = jsonDecode(jsonList.toString());
    for (var i in list) {
      print(TodoModel.fromJson(i));
      todoUnparsed.add(TodoModel.fromJson(i));
    }
    // print(TodoModel.fromJson(jsonDecode(jsonList.toString())));

    // final list = jsonDecode(jsonList!).map((s) => s as TodoModel).toList();
    print(todoUnparsed);
    // List<TodoModel> todoUnparsed = temp;

    return Future.value(todoUnparsed);
  }

  static Future<void> cacheListOfTodos({
    required SharedPreferences sharedPreferences,
    required List<String> list,
  }) async {
    sharedPreferences.setStringList(CACHED_TODOS, list);
  }
}
