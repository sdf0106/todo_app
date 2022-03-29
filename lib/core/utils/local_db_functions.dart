import 'local_db.dart';
import 'todo_type.dart';

import '../../features/todos/data/models/todo_model.dart';
import '../../features/todos/domain/entities/todo.dart';

class LocalDBFunctions {
  static LocalDB initDB() {
    List<Todo> db = [
      TodoModel(
        description: 'asd',
        endTime: DateTime.now().add(const Duration(hours: 1)),
        id: DateTime.now().toString(),
        isDone: false,
        isReminded: false,
        startTime: DateTime.now(),
        type: TodoType.work,
      ),
    ];

    return LocalDB(dataBase: db);
  }

  static Future<List<Todo>> getListOfTodos(LocalDB db) async {
    return Future.value(db.dataBase);
  }
}
