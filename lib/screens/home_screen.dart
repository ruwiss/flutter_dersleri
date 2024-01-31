import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? eposta;

  String? sifre;

  void _getUserInfoFromDevice() async {
    final prefs = await SharedPreferences.getInstance();
    eposta = prefs.getString("eposta");
    sifre = prefs.getString("sifre");
    setState(() {});
  }

  @override
  void initState() {
    _getUserInfoFromDevice();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("$eposta $sifre"),
      ),
    );
  }
}
