import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/database_service.dart';

class AddTodoScreen extends StatelessWidget {
  AddTodoScreen({super.key});
  final _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: TextField(
          controller: _textFieldController,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () async {
                  await context
                      .read<DatabaseService>()
                      .addTodo(_textFieldController.text);
                  _textFieldController.clear();
                },
                icon: const Icon(Icons.add)),
            border: const OutlineInputBorder(),
            isDense: true,
            hintText: "Birşeyler yazın.",
          ),
        ),
      ),
    );
  }
}
