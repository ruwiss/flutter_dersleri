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
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.redAccent,
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 200,
              color: Colors.blueGrey.shade200,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
