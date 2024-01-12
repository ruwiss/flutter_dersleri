import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/services/database_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _databaseService = DatabaseService();
  final _textFieldController = TextEditingController();

  void _getTodoList() async {
    await _databaseService.fetchTodos();
    setState(() {});
  }

  void _addTodo() async {
    await _databaseService.addTodo(_textFieldController.text);
    _textFieldController.clear();
    setState(() {});
  }

  void _updateTodo(Todo todo) async {
    await _databaseService.updateTodo(
        id: todo.id, text: todo.text, isDone: todo.isDone);
    setState(() {});
  }

  @override
  void initState() {
    _getTodoList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Görev Uygulaması"),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Center(
        child: Column(
          children: [
            _addTodoWidget(),
            _todoListWidget(),
          ],
        ),
      ),
    );
  }

  Expanded _todoListWidget() {
    return Expanded(
      child: ListView.separated(
        itemCount: _databaseService.currentTodos.length,
        itemBuilder: (context, index) {
          final Todo todo = _databaseService.currentTodos[index];
          return ListTile(
            title: Text(
              todo.text,
              style: TextStyle(
                decoration: todo.isDone
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            subtitle: Text(todo.datetime.toString()),
            tileColor: Colors.grey.shade100,
            trailing: Checkbox(
              value: todo.isDone,
              onChanged: (isDone) {
                todo.isDone = isDone!;
                _updateTodo(todo);
              },
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          height: 0,
          color: Colors.blueGrey.shade100,
        ),
      ),
    );
  }

  Container _addTodoWidget() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: TextField(
        controller: _textFieldController,
        decoration: InputDecoration(
          suffixIcon:
              IconButton(onPressed: _addTodo, icon: const Icon(Icons.add)),
          border: const OutlineInputBorder(),
          isDense: true,
          hintText: "Birşeyler yazın.",
        ),
      ),
    );
  }
}
