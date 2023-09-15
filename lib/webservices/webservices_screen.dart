import 'dart:convert';

import 'package:al2_2023/webservices/remote_user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WebservicesScreen extends StatefulWidget {
  const WebservicesScreen({super.key});

  @override
  State<WebservicesScreen> createState() => _WebservicesScreenState();
}

class _WebservicesScreenState extends State<WebservicesScreen> {
  bool _loading = true;
  String? _error;
  final List<RemoteUser> _users = [];

  @override
  void initState() {
    super.initState();
    _fetchUsers();
  }

  void _fetchUsers() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final response = await http.get(Uri.parse('https://reqres.in/api/users?page=1&per_page=5'));
      final jsonBody = json.decode(response.body);

      setState(() {
        _loading = false;
        _users.addAll((jsonBody["data"] as List).map((user) => RemoteUser.fromJson(user)).toList());
      });
    } catch (error) {
      setState(() {
        _loading = false;
        _error = 'Oups, une erreur est survenue';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (_loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if(_error != null) {
      return Center(
        child: Text(_error ?? ''),
      );
    }

    if (_users.isEmpty) {
      return const Center(
        child: Text('Hey, y\'a pas d\'utilisateurs'),
      );
    }

    return ListView.builder(
      itemCount: _users.length,
      itemBuilder: (context, index) {
        final user = _users[index];
        return ListTile(
          title: Text('${user.firstName}'),
        );
      },
    );
  }
}
