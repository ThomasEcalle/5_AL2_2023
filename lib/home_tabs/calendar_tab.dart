import 'package:flutter/material.dart';

class CalendarTab extends StatelessWidget {
  const CalendarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white38,
      child: const Center(
        child: Text(
          'Coucou, c\'est le calendrier',
        ),
      ),
    );
  }
}
