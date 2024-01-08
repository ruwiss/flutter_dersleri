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
        child: Container(
          height: 200,
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              direction: Axis.vertical,
              children: [
                _ornekWidget(),
                _ornekWidget(),
                _ornekWidget(),
                _ornekWidget(),
                _ornekWidget(),
                _ornekWidget(),
                _ornekWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _ornekWidget() {
    return Container(
      width: 100,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.greenAccent,
      ),
      child: const Text(
        'Item',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
