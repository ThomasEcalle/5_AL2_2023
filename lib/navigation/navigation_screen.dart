import 'package:al2_2023/navigation/build_context_extensions.dart';
import 'package:al2_2023/navigation/destinations/first_screen.dart';
import 'package:al2_2023/navigation/destinations/second_screen.dart';
import 'package:al2_2023/navigation/destinations/third_screen.dart';
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
            ElevatedButton(
              child: const Text('Go to second screen'),
              onPressed: () => _goToSecondScreen(context),
            ),
            ElevatedButton(
              child: const Text('Go to third screen'),
              onPressed: () => _goToThirdScreen(context),
            ),
          ],
        ),
      ),
    );
  }

  void _goToFirstScreen(BuildContext context) {
    context.push(
      MaterialPageRoute(
        builder: (_) => const FirstScreen(),
      ),
    );
  }

  void _goToSecondScreen(BuildContext context) {
    Navigator.of(context).pushNamed(SecondScreen.routeName);
  }

  void _goToThirdScreen(BuildContext context) {
    // Navigator.of(context).pushNamed(
    //   ThirdScreen.routeName,
    //   arguments: 42,
    // );

    ThirdScreen.navigateTo(context, 320);
  }
}
