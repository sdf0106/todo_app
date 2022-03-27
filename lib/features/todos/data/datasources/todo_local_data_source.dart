import 'package:todo_app/core/utils/localDb.dart';
import 'package:todo_app/core/utils/local_db.dart';

import '../../../../core/errors/exceptions.dart';
import '../../domain/entities/todo.dart';
import '../models/todo_model.dart';

abstract class TodoLocalDataSource {
  Future<void> addTodo({required TodoModel todo});

  Future<List<TodoModel>> getTodos();

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
  final LocalDB db;

  TodoLocalDataSourceImpl({required this.db});

  @override
  Future<List<TodoModel>> getTodos() async {
    try {
      final List<Todo> list = await LocalDBFunctions.getListOfTodos(db);
      print(list);
      List<TodoModel> todosUnparsed = [];
      for (var i in list) {
        todosUnparsed.add(TodoModel.returnObj(i));
      }
      print(todosUnparsed);
      return todosUnparsed;
    } catch (error) {
      print(error);
      throw CacheExeption();
    }
  }

  @override
  Future<void> addTodo({required TodoModel todo}) async {
    try {
      final List<TodoModel> todosUnparsed = await getTodos();
      todosUnparsed.add(todo);
      print(todosUnparsed);
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
      final List<TodoModel> todosUnparsed = await getTodos();
      int index = todosUnparsed.indexWhere((element) => element.id == id);
      todosUnparsed[index].copyWith(isDone: !todosUnparsed[index].isDone);
      // todosUnparsed[index].isDone = !todosUnparsed[index].isDone;

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
      final List<TodoModel> todosUnparsed = await getTodos();
      int index = todosUnparsed.indexWhere((element) => element.id == id);
      todosUnparsed[index]
          .copyWith(isReminded: !todosUnparsed[index].isReminded);
      // todosUnparsed[index].isReminded = !todosUnparsed[index].isReminded;

    } catch (error) {
      throw CacheExeption();
    }
  }

  // @override
  // Future<void> cacheAllTodos() {
  //   throw UnimplementedError();
  // }
}
