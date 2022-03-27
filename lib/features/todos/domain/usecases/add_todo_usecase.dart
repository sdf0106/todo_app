import 'package:equatable/equatable.dart';

import '../../../../core/usecases/void_usecase.dart';
import '../entities/todo.dart';
import '../repositories/todos_repository.dart';

class AddTodoUseCase implements VoidUseCase<void, Params> {
  final TodosRepository repository;
  AddTodoUseCase({
    required this.repository,
  });
  @override
  Future<void> call(Params params) async {
    return await repository.addTodo(todo: params.todo);
  } 
}

class Params extends Equatable {
  final Todo todo;
  const Params({
    required this.todo,
  });

  @override
  List<Object?> get props => [todo];
}
