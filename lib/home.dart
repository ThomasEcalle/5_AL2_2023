import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          'Coucou',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
