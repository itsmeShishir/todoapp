import 'package:flutter/foundation.dart';
import 'package:myapptodo/models/todo.dart';

class TodoProvider extends ChangeNotifier{
  List<Todo> _todos = [];
  List<Todo> get todos => _todos;

  void addTodo(String title){
    _todos.add(Todo(title:title));
    notifyListeners();
  }

  void deleteTodos(int index){
    _todos.removeAt(index);
    notifyListeners();
  }

  void toggleTodoStatus(int index){
    _todos[index].isCompleted = !_todos[index].isCompleted;
    notifyListeners();
  }

}