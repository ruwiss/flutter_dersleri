import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('İkinci Ekran'),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Ekranı kapat'))
          ],
        ),
      ),
    );
  }
}
