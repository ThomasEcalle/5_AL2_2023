import 'package:al2_2023/navigation/destinations/first_screen.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Go to first screen'),
              onPressed: () => _goToFirstScreen(context),
            ),
          ],
        ),
      ),
    );
  }

  void _goToFirstScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const FirstScreen(),
      ),
    );
  }
}
