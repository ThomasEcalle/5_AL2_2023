import 'package:al2_2023/home_tabs/calendar_tab.dart';
import 'package:al2_2023/home_tabs/search_tab.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  final List<Widget> _tabs =  [
    const CalendarTab(),
    const SearchTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coucou'),
      ),
      body: _tabs[_index],
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _onButtonTap(context),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _onBottomItemTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Caendrier',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }

  void _onBottomItemTap(int newIndex) {
    print('New index: $newIndex');
    setState(() {
      _index = newIndex;
    });
  }

  void _onButtonTap(BuildContext context) {
    /*ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Salut'),
      ),
    );*/
    setState(() {
      _index = 0;
    });
  }
}
