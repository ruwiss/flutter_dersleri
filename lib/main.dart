import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screens/home_screen.dart';
import 'package:todo_app/services/database_service.dart';

void main() async {
  // Flutter'ı hazırla
  WidgetsFlutterBinding.ensureInitialized();

  // Veritabanını başlat
  await DatabaseService.initialize();

  // Widgetları Çiz
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DatabaseService()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
