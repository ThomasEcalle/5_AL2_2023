import 'package:flutter/material.dart';

class SquareButton3 extends StatelessWidget {
  const SquareButton3({
    super.key,
    this.color = Colors.pink,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
