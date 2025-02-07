import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String RouteName, {Object? arguments}) {
    return Navigator.pushNamed(this, RouteName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String RouteName, {Object? arguments}) {
    return Navigator.pushReplacementNamed(this, RouteName,
        arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String RouteName,
      {required RoutePredicate predicate, Object? arguments}) {
    return Navigator.pushNamedAndRemoveUntil(this, RouteName, predicate,
        arguments: arguments);
  }

  void pop() {
    Navigator.pop(this);
  }
}
