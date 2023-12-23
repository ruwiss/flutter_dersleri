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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => print('Bana tıkladın'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                child: Text(
                  'Bana Tıkla',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
              TextButton(onPressed: () {}, child: Text('Tıkla Bana')),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.red,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
