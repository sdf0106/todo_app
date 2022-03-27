import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/features/todos/domain/usecases/add_todo_usecase.dart'
    as add;
import 'package:todo_app/features/todos/domain/usecases/change_todo_done_status_usecase.dart'
    as changeDoneStatus;
import 'package:todo_app/features/todos/domain/usecases/change_todo_reminder_status_usecase.dart'
    as changeRemindStatus;

import '../../../../../core/errors/failures.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../domain/entities/todo.dart';
import '../../../domain/usecases/get_todos_usecase.dart';

part 'todos_bloc.freezed.dart';
part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
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
  }) : super(const _Initial()) {
    on<_AddTask>(_addTask);
    on<_GetAllTasks>(_getTasks);
    on<_TaskIsDone>(_changeDoneStatus);
    on<_TaskIsReminded>(_changeReminderStatus);
  }

  void _getTasks(event, emit) async {
    try {
      emit(const TodosState.loading());
      final failureOrTasks = await getTodos(NoParams());
      final fT = _eitherTasksOrFailure(failureOrTasks);
      emit(fT);
    } catch (e) {
      emit(const TodosState.emptyList());
    }
  }

  FutureOr<void> _addTask(_AddTask event, Emitter<TodosState> emit) async {
    emit(const TodosState.loading());
    await addTodoUseCase.call(add.Params(todo: event.todo));
    emit(const TodosState.taskAdded(message: 'Task Added'));
    // final fA = await _eitherAddOrFailure(failureOrAdded);
  }

  FutureOr<void> _changeDoneStatus(
    _TaskIsDone event,
    Emitter<TodosState> emit,
  ) async {
    emit(const TodosState.loading());
    await changeTodoDoneStatusUseCase.call(
      changeDoneStatus.Params(
        id: event.id,
        status: event.status,
      ),
    );
    emit(const TodosState.taskStatusChanged(message: 'Done Status Changed'));
  }

  FutureOr<void> _changeReminderStatus(
    _TaskIsReminded event,
    Emitter<TodosState> emit,
  ) async {
    emit(const TodosState.loading());
    await changeTodoReminderStatusUseCase.call(
      changeRemindStatus.Params(
        id: event.id,
        status: event.status,
      ),
    );
    emit(const TodosState.taskStatusChanged(message: 'Done Status Changed'));
  }

  TodosState _eitherTasksOrFailure(
      Either<IntFailure, List<Todo>> failureOrTasks) {
    return failureOrTasks.fold(
      (IntFailure failure) => TodosState.failure(_mapFailureToString(failure)),
      (tasks) => TodosState.loaded(tasks: tasks, message: 'Tasks Loaded'),
    );
  }

  String _mapFailureToString(IntFailure failure) {
    switch (failure.runtimeType) {
      case StorageFailure:
        return 'Storage_Failure'.toUpperCase();
      default:
        return 'Unexpected error';
    }
  }
}
