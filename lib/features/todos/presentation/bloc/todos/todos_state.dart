part of 'todos_bloc.dart';

@freezed
class TodosState with _$TodosState {
  const factory TodosState.initial() = _Initial;
  const factory TodosState.loading() = Loading;
  const factory TodosState.loaded({
    required List<Todo> tasks,
    required String message,
  }) = Loaded;
  const factory TodosState.taskAdded({required String message}) = TaskAdded;
  const factory TodosState.taskStatusChanged({required String message}) =
      TaskStatusChanged;
  const factory TodosState.failure(String error) = Failure;
  const factory TodosState.emptyList() = EmptyList;
  const factory TodosState.closeReminderBox() = CloseReminderBox;
}
