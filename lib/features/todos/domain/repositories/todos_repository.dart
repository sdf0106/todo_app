import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/todo.dart';

abstract class TodosRepository {
  Future<void> addTodo({required Todo todo});

  Future<Either<IntFailure, List<Todo>>> getTodos();

  Future<void> changeTodoDoneStatus({
    required String id,
    required bool status,
  });

  Future<void> changeTodoReminderStatus({
    required String id,
    required bool status,
  });
}
