import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static const routeName = '/third-screen';

  static void navigateTo(BuildContext context, int articleId) {
    Navigator.of(context).pushNamed(routeName, arguments: articleId);
  }

  const ThirdScreen({
    super.key,
    required this.articleId,
  });

  final int articleId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen $articleId'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go back'),
          onPressed: () => _goBack(context),
        ),
      ),
    );
  }

  void _goBack(BuildContext context) {
    Navigator.of(context).pop();
  }
}
