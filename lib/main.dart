import 'package:flutter/material.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text('Uygulamam',
              style:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.white)),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        body: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
