import 'package:al2_2023/navigation/destinations/not_found_route.dart';
import 'package:al2_2023/navigation/destinations/second_screen.dart';
import 'package:al2_2023/navigation/destinations/third_screen.dart';
import 'package:al2_2023/navigation/navigation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const NavigationScreen(),
        SecondScreen.routeName: (context) => const SecondScreen(),
      },
      onGenerateRoute: (RouteSettings routeSettings) {
        Widget route = const NotFoundRoute();

        switch (routeSettings.name) {
          case ThirdScreen.routeName:
            if (routeSettings.arguments is int) {
              route = ThirdScreen(articleId: routeSettings.arguments as int);
            }
        }

        return MaterialPageRoute(builder: (context) => route);
      },
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
    );
  }
}
