import 'package:al2_2023/home_tabs/square_button3.dart';
import 'package:flutter/material.dart';

class CalendarTab extends StatefulWidget {
  const CalendarTab({super.key});

  @override
  State<CalendarTab> createState() => _CalendarTabState();
}

class _CalendarTabState extends State<CalendarTab> {
  Color _color = Colors.green;
  double _size = 200;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        color: Colors.white,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: _size,
            width: _size,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.circular(_color == Colors.green ? 20 : 50),
            ),
          )
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _color = _color == Colors.green ? Colors.blue : Colors.green;
      _size = _size == 200 ? 100 : 200;
    });
  }
}
