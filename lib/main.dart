
import 'package:flutter/material.dart';

void main() {
  runApp(const MRKDairyApp());
}

class MRKDairyApp extends StatelessWidget {
  const MRKDairyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MRK DAIRY',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MRK DAIRY'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Welcome to MRK DAIRY',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
