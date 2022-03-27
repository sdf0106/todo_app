// import 'dart:convert';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:todo_app/core/utils/todo_type.dart';

// import '../../features/todos/data/models/todo_model.dart';
// import '../../features/todos/domain/entities/todo.dart';
// import 'constants.dart';

// class LocalDB {
//   static Future<SharedPreferences> initializeDB() async {
//     final prefs = await SharedPreferences.getInstance();
//     List<Todo> list = [
//       TodoModel(
//         description: 'asd',
//         endTime: DateTime.now().add(const Duration(hours: 1)),
//         id: DateTime.now().toString(),
//         isDone: false,
//         isReminded: false,
//         startTime: DateTime.now(),
//         type: TodoType.work,
//       ),
//     ];
//     prefs.setString(CACHED_TODOS, json.encode(list));
//     return prefs;
//   }

//   static Future<List<TodoModel>> getListOfTodos(
//       SharedPreferences sharedPreferences) {
//     final jsonList = sharedPreferences.getString(CACHED_TODOS);

//     List<TodoModel> todoUnparsed = [];
//     var list = jsonDecode(jsonList.toString());
//     for (var i in list) {
//       todoUnparsed.add(TodoModel.fromJson(i));
//     }

//     return Future.value(todoUnparsed);
//   }

//   static Future<void> cacheListOfTodos({
//     required SharedPreferences sharedPreferences,
//     required List<String> list,
//   }) async {
//     sharedPreferences.setStringList(CACHED_TODOS, list);
//   }
// }
import '../../features/todos/domain/entities/todo.dart';

class LocalDB {
  List<Todo> dataBase;
  LocalDB({required this.dataBase});
}
