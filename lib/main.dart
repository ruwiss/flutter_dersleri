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
        appBar: AppBar(
          title: Text('Uygulamam',
              style:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.white)),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Merhaba'),
              Image.asset('assets/images/logo.png', width: 200),
              Image.network(
                'https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1',
                width: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
