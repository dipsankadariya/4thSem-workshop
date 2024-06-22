

import 'dart:convert';

import 'package:http/http.dart' as http;

class Todo {
  int id;
  String todo;
  bool completed;
  int userId;

  Todo(
      {required this.id,
      required this.todo,
      required this.completed,
      required this.userId});

  factory Todo.fromJson(Map<String, dynamic> item) {
    return Todo(
      id: item['id'],
      todo: item['todo'],
      completed: item['completed'],
      userId: item['userId'],
    );
  }
}

void callApi() async {
  var url = Uri.parse('https://dummyjson.com/todos');
  var response = await http.get(url);

  print(response.statusCode);

  var data = jsonDecode(response.body);

// print(data['todos']);
  List<Todo> todos = data('todos').map((item) {
    return Todo.fromJson(item);
  }).todoList();

  print(todos[0]);
}
