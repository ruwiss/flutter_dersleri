import 'package:flutter/material.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
          ]),
      alignment: Alignment.center,
      child: const Text(
        'Ruwis',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
