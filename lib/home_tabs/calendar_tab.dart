import 'package:al2_2023/home_tabs/square_button2.dart';
import 'package:flutter/material.dart';

class CalendarTab extends StatefulWidget {
  const CalendarTab({super.key});

  @override
  State<CalendarTab> createState() => _CalendarTabState();
}

class _CalendarTabState extends State<CalendarTab> {
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      child: Center(
        child: SquareButton2(
          onTap: _onTap,
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _color = _color == Colors.white ? Colors.blue : Colors.white;
    });
  }
}
