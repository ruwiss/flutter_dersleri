import 'package:flutter/material.dart';
import 'custom_card.dart';

void main() {
  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Uygulamam',
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
          ),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        body: const Center(
          child: Column(
            children: [
              // custom_card.dart dosyasından gelen widget
              CustomCardView(),
            ],
          ),
        ),
      ),
    );
  }

  // Örnek olarak method şeklinde parçalamayı burada görebilirsiniz.
  Widget customCardViewMethod() {
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
