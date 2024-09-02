import 'dart:convert';

import 'package:app02_startto/models/todo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoRepository {
  late SharedPreferences sharedPreferences;
  static const todoListKey = 'todo_list';

  void saveTodoList(List<Todo> todos) {
    final jsonString = jsonEncode(todos);
    sharedPreferences.setString(todoListKey, jsonString);
  }

  Future<List<Todo>> getTodoList() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final String jsonString = sharedPreferences.getString(todoListKey) ?? '[]';
    final List jsonDecoder = jsonDecode(jsonString) as List;
    return jsonDecoder.map((e) => Todo.fromJson(e)).toList();
  }
}
