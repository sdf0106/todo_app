import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/local_db.dart';
import '../../../../core/utils/todo_type.dart';
import '../../domain/entities/todo.dart';
import '../models/todo_model.dart';
import '../models/todo_response_model.dart';

abstract class TodoLocalDataSource {
  Future<void> addTodo({required TodoModel todo});

  Future<TodoResponseModel> getTodos();

  Future<void> changeTodoDoneStatus({
    required String id,
    required bool status,
  });

  Future<void> changeTodoReminderStatus({
    required String id,
    required bool status,
  });

  // Future<void> cacheAllTodos();
}

class TodoLocalDataSourceImpl implements TodoLocalDataSource {
  final SharedPreferences sharedPreferences;

  TodoLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<TodoResponseModel> getTodos() async {
    try {
      final List<TodoModel> todosUnparsed =
          await LocalDB.getListOfTodos(sharedPreferences);
      print(todosUnparsed);
      return Future.value(TodoResponseModel(todos: todosUnparsed));
    } catch (error) {
      print(error);
      throw CacheExeption();
    }
  }

  @override
  Future<void> addTodo({required TodoModel todo}) async {
    try {
      final List<TodoModel> todosUnparsed =
          await LocalDB.getListOfTodos(sharedPreferences);
      todosUnparsed.add(todo);
      LocalDB.cacheListOfTodos(
        sharedPreferences: sharedPreferences,
        list: todosUnparsed.map((e) => jsonEncode(e)).toList(),
      );
    } catch (error) {
      throw CacheExeption();
    }
  }

  @override
  Future<void> changeTodoDoneStatus({
    required String id,
    required bool status,
  }) async {
    try {
      final List<TodoModel> todosUnparsed =
          await LocalDB.getListOfTodos(sharedPreferences);
      int index = todosUnparsed.indexWhere((element) => element.id == id);
      todosUnparsed[index].copyWith(isDone: !todosUnparsed[index].isDone);
      // todosUnparsed[index].isDone = !todosUnparsed[index].isDone;
      LocalDB.cacheListOfTodos(
        sharedPreferences: sharedPreferences,
        list: todosUnparsed.map((e) => jsonEncode(e)).toList(),
      );
    } catch (error) {
      throw CacheExeption();
    }
  }

  @override
  Future<void> changeTodoReminderStatus({
    required String id,
    required bool status,
  }) async {
    try {
      final List<TodoModel> todosUnparsed =
          await LocalDB.getListOfTodos(sharedPreferences);
      int index = todosUnparsed.indexWhere((element) => element.id == id);
      todosUnparsed[index]
          .copyWith(isReminded: !todosUnparsed[index].isReminded);
      // todosUnparsed[index].isReminded = !todosUnparsed[index].isReminded;
      LocalDB.cacheListOfTodos(
        sharedPreferences: sharedPreferences,
        list: todosUnparsed.map((e) => jsonEncode(e)).toList(),
      );
    } catch (error) {
      throw CacheExeption();
    }
  }

  // @override
  // Future<void> cacheAllTodos() {
  //   throw UnimplementedError();
  // }
}
