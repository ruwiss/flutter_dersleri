import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List? veriler = ['veri 1'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            if (veriler == null) const Text('veri yok'),
            if (veriler != null) Text(veriler![0]),
            veriler == null ? const Text('Veri Yok') : Text(veriler![0])
          ],
        ),
      ),
    );
  }
}
