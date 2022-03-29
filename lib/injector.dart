import 'package:get_it/get_it.dart';
import 'package:todo_app/features/todos/data/datasources/todo_local_data_source.dart';
import 'package:todo_app/features/todos/data/repositories/todos_repository_impl.dart';
import 'package:todo_app/features/todos/domain/repositories/todos_repository.dart';
import 'package:todo_app/features/todos/domain/usecases/add_todo_usecase.dart';
import 'package:todo_app/features/todos/domain/usecases/change_todo_done_status_usecase.dart';
import 'package:todo_app/features/todos/domain/usecases/change_todo_reminder_status_usecase.dart';
import 'package:todo_app/features/todos/domain/usecases/get_todos_usecase.dart';
import 'package:todo_app/features/todos/presentation/bloc/todos/todos_bloc.dart';

import 'core/utils/local_db_functions.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //External
  final db = LocalDBFunctions.initDB();
  sl.registerLazySingleton(() => db);

  //UseCases
  sl.registerLazySingleton(() => AddTodoUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetTodosUseCase(repository: sl()));
  sl.registerLazySingleton(() => ChangeTodoDoneStatusUseCase(sl()));
  sl.registerLazySingleton(() => ChangeTodoReminderStatusUseCase(sl()));

  //Repository
  sl.registerLazySingleton<TodosRepository>(
    () => TodosRepositoryImpl(dataSource: sl()),
  );

  //DataSource
  sl.registerLazySingleton<TodoLocalDataSource>(
    () => TodoLocalDataSourceImpl(db: db),
  );
  //Bloc
  sl.registerFactory(
    () => TodosBloc(
      getTodos: sl(),
      addTodoUseCase: sl(),
      changeTodoDoneStatusUseCase: sl(),
      changeTodoReminderStatusUseCase: sl(),
      dataSource: sl(),
    ),
  );
}
