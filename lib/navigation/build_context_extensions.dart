import 'package:flutter/cupertino.dart';

extension BuildContextExtensions on BuildContext {
  void push(Route route) {
    Navigator.of(this).push(route);
  }
}