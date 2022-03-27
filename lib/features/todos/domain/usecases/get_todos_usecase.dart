import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/todo.dart';
import '../repositories/todos_repository.dart';

class GetTodosUseCase implements UseCase<List<Todo>, NoParams> {
  final TodosRepository repository;
  GetTodosUseCase({
    required this.repository,
  });
  @override
  Future<Either<IntFailure, List<Todo>>> call(NoParams params) async {
    return await repository.getTodos();
  }
}
