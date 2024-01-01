import 'package:flutter/material.dart';
import 'package:ornek_proje/models/elemanlar_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ElemanlarModel> elemanlar = [
    ElemanlarModel('Başlık 1', 'Alt başlık 1'),
    ElemanlarModel('Başlık 2', 'Alt başlık 2'),
    ElemanlarModel('Başlık 3', 'Alt başlık 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: elemanlar.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(elemanlar[index].title),
          subtitle: Text(elemanlar[index].subtitle),
          trailing: const Icon(Icons.chevron_right),
          tileColor: Colors.grey.shade50,
          onTap: () => print('Eleman: $index'),
        ),
        separatorBuilder: (context, index) => const Divider(height: 0),
      ),
    );
  }
}
