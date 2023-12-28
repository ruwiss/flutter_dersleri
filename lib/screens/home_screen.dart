import 'package:flutter/material.dart';
import 'package:ornek_proje/screens/second_screen.dart';
import '../custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Uygulamam',
          style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
        ),
        backgroundColor: Colors.indigo.shade200,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // custom_card.dart dosyasından gelen widget
            const CustomCardView(),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondScreen(),
                      ));
                },
                child: const Text('İkinci Ekrana Git'))
          ],
        ),
      ),
    );
  }
}
