import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

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
      ),
      home: const SplashScreen(),
    );
  }
}
