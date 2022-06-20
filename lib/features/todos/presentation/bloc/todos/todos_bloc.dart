// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/datasources/todo_local_data_source.dart';
import 'package:todo_app/features/todos/domain/usecases/add_todo_usecase.dart'
    as add;
import 'package:todo_app/features/todos/domain/usecases/change_todo_done_status_usecase.dart'
    as changeDoneStatus;
import 'package:todo_app/features/todos/domain/usecases/change_todo_reminder_status_usecase.dart'
    as changeRemindStatus;

import '../../../../../core/usecases/usecase.dart';
import '../../../domain/entities/todo.dart';
import '../../../domain/usecases/get_todos_usecase.dart';

part 'todos_bloc.freezed.dart';
part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final TodoLocalDataSource dataSource;
  final GetTodosUseCase getTodos;
  final add.AddTodoUseCase addTodoUseCase;
  final changeDoneStatus.ChangeTodoDoneStatusUseCase
      changeTodoDoneStatusUseCase;
  final changeRemindStatus.ChangeTodoReminderStatusUseCase
      changeTodoReminderStatusUseCase;

  TodosBloc({
    required this.getTodos,
    required this.addTodoUseCase,
    required this.changeTodoDoneStatusUseCase,
    required this.changeTodoReminderStatusUseCase,
    required this.dataSource,
  }) : super(const _Initial()) {
    on<TodosEvent>(todosEvent);
  }

  void todosEvent(
    TodosEvent event,
    Emitter<TodosState> emit,
  ) async {
    event.when(
      getAllTasks: () async {
        try {
          emit(const TodosState.loading());
          final failureOrTasks = await getTodos(NoParams());
          emit(
            TodosState.loaded(tasks: failureOrTasks, message: 'Tasks Loaded'),
          );
        } catch (e) {
          emit(const TodosState.emptyList());
        }
      },
      addTask: (todo) => _addTask(todo),
      taskIsDone: (String id, bool isDone) => _changeDoneStatus(id, isDone),
      taskIsReminded: (String id, bool isReminded) =>
          _changeReminderStatus(id, isReminded),
      closeReminderBox: () => emit(
        const TodosState.closeReminderBox(),
      ),
    );

    // event.map(
    //   addTask: (event) {
    //     emit();
    //   },
    //   getAllTasks: (event) {},
    //   taskIsDone: (event) {},
    //   taskIsReminded: (event) {},
    //   closeReminderBox: (event) {},
    // );
  }

  void _getTasks() async {
    try {
      emit(const TodosState.loading());
      final failureOrTasks = await getTodos(NoParams());
      emit(
        TodosState.loaded(tasks: failureOrTasks, message: 'Tasks Loaded'),
      );
    } catch (e) {
      emit(const TodosState.emptyList());
    }
  }

  void _addTask(Todo todo) async {
    emit(const TodosState.loading());
    await addTodoUseCase.call(add.Params(todo: todo));
    emit(const TodosState.taskAdded(message: 'Task Added'));
  }

  void _changeDoneStatus(String id, bool status) async {
    emit(const TodosState.loading());
    await changeTodoDoneStatusUseCase.call(
      changeDoneStatus.Params(
        id: id,
        status: status,
      ),
    );
    emit(const TodosState.taskStatusChanged(message: 'Done Status Changed'));
  }

  void _changeReminderStatus(
    String id,
    bool status,
  ) async {
    emit(const TodosState.loading());
    await changeTodoReminderStatusUseCase.call(
      changeRemindStatus.Params(
        id: id,
        status: status,
      ),
    );
    emit(
        const TodosState.taskStatusChanged(message: 'Reminder Status Changed'));
  }

  // TodosState _eitherTasksOrFailure(
  //     Either<IntFailure, List<Todo>> failureOrTasks) {
  //   return failureOrTasks.fold(
  //     (IntFailure failure) => TodosState.failure(_mapFailureToString(failure)),
  //     (tasks) => TodosState.loaded(tasks: tasks, message: 'Tasks Loaded'),
  //   );
  // }

  // String _mapFailureToString(IntFailure failure) {
  //   switch (failure.runtimeType) {
  //     case StorageFailure:
  //       return 'Storage_Failure'.toUpperCase();
  //     default:
  //       return 'Unexpected error';
  //   }
  // }
}
