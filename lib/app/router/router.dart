import 'package:docapp/app/router/path.dart';
import 'package:docapp/features/login/login.dart';
import 'package:docapp/features/onboarding/view/onboarding.dart';
import 'package:flutter/material.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    
      case screenpath.onboarding:
      return MaterialPageRoute(builder: (context) => const onboarding());
      case screenpath.login:
      return MaterialPageRoute(builder: (context) => const Login());

    default:
      return MaterialPageRoute(builder: (context) {
        return Scaffold(
            body: Center(child: Text("No route found}")));
      });
  }
}
