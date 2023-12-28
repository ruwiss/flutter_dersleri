import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              Image.asset('assets/images/zikirmatik.png', width: 300),
              const Positioned(
                top: 46,
                right: 80,
                child: Text(
                  '0',
                  style: TextStyle(
                    fontFamily: 'Digital7',
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
