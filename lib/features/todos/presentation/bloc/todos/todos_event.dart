part of 'todos_bloc.dart';

@freezed
class TodosEvent with _$TodosEvent {
  const factory TodosEvent.addTask({required Todo todo}) = _AddTask;
  const factory TodosEvent.getAllTasks() = _GetAllTasks;
  const factory TodosEvent.taskIsDone({
    required String id,
    required bool status,
  }) = _TaskIsDone;
  const factory TodosEvent.taskIsReminded({
    required String id,
    required bool status,
  }) = _TaskIsReminded;
}
