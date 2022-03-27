import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/config/routes/router.dart';

import 'injector.dart';
import 'features/todos/presentation/bloc/todos/todos_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();
  runApp(const TodosApp());
  // await LocalDB.checkLocalDB(prefs: sl());
}

class TodosApp extends StatelessWidget {
  const TodosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter _router = AppRouter();
    return BlocProvider(
      create: (_) => sl<TodosBloc>(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: _router.router.routeInformationParser,
        routerDelegate: _router.router.routerDelegate,
      ),
    );
  }
}
