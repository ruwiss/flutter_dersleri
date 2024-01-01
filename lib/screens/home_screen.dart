import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List elemanlar = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: elemanlar.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(elemanlar[index]),
          subtitle: Text('Eleman: $index'),
          trailing: const Icon(Icons.chevron_right),
          tileColor: Colors.grey.shade50,
          onTap: () => print('Eleman: $index'),
        ),
        separatorBuilder: (context, index) => const Divider(height: 0),
      ),
    );
  }
}
