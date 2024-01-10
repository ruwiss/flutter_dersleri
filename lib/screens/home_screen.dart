// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _value = true;

  void _setValue() {
    _value = !_value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _setValue,
        child: Text('OK'),
      ),
      body: Column(
        children: [
          Visibility(
            visible: _value,
            child: Container(
              height: 200,
              color: Colors.redAccent,
            ),
          ),
          Opacity(
            opacity: _value ? 1 : 0,
            child: Expanded(
              flex: 3,
              child: Container(
                height: 200,
                color: Colors.blue.shade300,
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}
