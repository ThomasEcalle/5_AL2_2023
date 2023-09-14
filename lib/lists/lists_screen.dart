import 'package:al2_2023/lists/user_item.dart';
import 'package:flutter/material.dart';

import 'list_user.dart';

class ListsScreen extends StatelessWidget {
  ListsScreen({super.key});

  final List<ListUser> _users = List.generate(100, (index) {
    return ListUser(
      firstName: 'FirstName $index',
      lastName: 'LastName $index',
      address: 'Address $index',
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          itemCount: _users.length,
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
          itemBuilder: (context, index) {
            print('Drawing user $index');
            final user = _users[index];
            return UserItem(user: user);
          },
        ),
      ),
    );
  }

  Widget _buildWithSingleChild() {
    return SingleChildScrollView(
      child: Column(
        children: _users.map((user) {
          return UserItem(user: user);
        }).toList(),
      ),
    );
  }
}
