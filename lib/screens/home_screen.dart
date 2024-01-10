// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
            text: "Flutter Ders ",
            style: const TextStyle(
              fontSize: 24,
              color: Colors.deepOrange,
            ),
            children: const [
              TextSpan(
                text: "#26",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: " RichText Kullanımı",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
