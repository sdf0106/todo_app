import '../../../../core/utils/local_db_functions.dart';
import '../../../../core/utils/local_db.dart';

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
}

class TodoLocalDataSourceImpl implements TodoLocalDataSource {
  final LocalDB db;

  TodoLocalDataSourceImpl({required this.db});

  @override
  Future<List<TodoModel>> getTodos() async {
    try {
      final List<Todo> list = await LocalDBFunctions.getListOfTodos(db);
      List<TodoModel> todosUnparsed = [];
      for (var i in list) {
        todosUnparsed.add(TodoModel.returnObj(i));
      }

      return todosUnparsed;
    } catch (error) {
      throw CacheExeption();
    }
  }

  @override
  Future<void> addTodo({required TodoModel todo}) async {
    try {
      db.dataBase.add(todo);
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
      int index = db.dataBase.indexWhere((element) => element.id == id);
      db.dataBase[index].copyWith(isDone: !db.dataBase[index].isDone);
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
      int index = db.dataBase.indexWhere((element) => element.id == id);
      db.dataBase[index].isReminded = !db.dataBase[index].isReminded;
    } catch (error) {
      throw CacheExeption();
    }
  }
}
