import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/todo.dart';
import '../../domain/repositories/todos_repository.dart';
import '../datasources/todo_local_data_source.dart';
import '../models/todo_model.dart';

class TodosRepositoryImpl implements TodosRepository {
  final TodoLocalDataSource dataSource;
  TodosRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<List<Todo>> getTodos() async {
    return await _getTodos();
  }
    
  @override
  Future<void> addTodo({required Todo todo}) async {
    return dataSource.addTodo(todo: TodoModel.returnObj(todo));
  }

  @override
  Future<void> changeTodoDoneStatus({
    required String id,
    required bool status,
  }) async {
    return dataSource.changeTodoDoneStatus(id: id, status: status);
  }

  @override
  Future<void> changeTodoReminderStatus({
    required String id,
    required bool status,
  }) async {
    return dataSource.changeTodoReminderStatus(id: id, status: status);
  }

  _getTodos() {
    try {
      final todos = dataSource.getTodos();
      Right(todos);
      return todos;
    } on CacheExeption {
      return Left(StorageFailure());
    }
  }
}
