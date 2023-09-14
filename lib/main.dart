import 'package:al2_2023/lists/lists_screen.dart';
import 'package:al2_2023/webservices/webservices_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.green,
            fontSize: 24,
          ),
          bodyLarge: TextStyle(
            color: Colors.green,
            fontSize: 30,
          ),
        ),
      ),
      home: WebservicesScreen(),
    );
  }
}
