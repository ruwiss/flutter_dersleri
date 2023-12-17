import 'package:flutter/material.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Uygulamam'),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        body: Text('merhaba'),
      ),
    );
  }
}
