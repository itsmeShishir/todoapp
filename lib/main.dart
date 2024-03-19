import 'package:flutter/material.dart';
import 'package:myapptodo/models/todoProvider.dart';
import 'package:provider/provider.dart';

void mani() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MaterialApp(
        title: "todo App",
        home: Todolist(),
      ),
    );
  }
}

class Todolist extends StatefulWidget {
  const Todolist({super.key});

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[500],
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: Consumer<TodoProvider>(builder: (context, todoprovider, child) {
        return ListView.builder(
            itemCount: todoprovider.todos.length,
            itemBuilder: (context, index) {
              return ListTile(

              );
            });
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add),),
    );
  }
}
