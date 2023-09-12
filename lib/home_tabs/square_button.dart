import 'package:flutter/material.dart';

class SquareButton extends StatefulWidget {
  const SquareButton({super.key});

  @override
  State<SquareButton> createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {

  Color _color = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  void _onTap() {
    print('coucou');
    setState(() {
      _color = _color == Colors.amber ? Colors.blue : Colors.amber;
    });
  }
}
