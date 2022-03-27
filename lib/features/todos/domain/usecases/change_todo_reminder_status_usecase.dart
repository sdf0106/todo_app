import 'package:equatable/equatable.dart';

import '../../../../core/usecases/void_usecase.dart';
import '../repositories/todos_repository.dart';

class ChangeTodoReminderStatusUseCase implements VoidUseCase<void, Params> {
  final TodosRepository repository;

  const ChangeTodoReminderStatusUseCase(this.repository);

  @override
  Future<void> call(params) async {
    return await repository.changeTodoReminderStatus(
      id: params.id,
      status: params.status,
    );
  }
}

class Params extends Equatable {
  final String id;
  final bool status;
  const Params({
    required this.id,
    required this.status,
  });

  @override
  List<Object?> get props => [id, status];
}
