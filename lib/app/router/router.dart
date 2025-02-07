import 'package:docapp/app/router/path.dart';
import 'package:docapp/features/onboarding/view/onboarding.dart';
import 'package:docapp/features/splash/splashview.dart';
import 'package:flutter/material.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    
      case screenpath.onboarding:
      return MaterialPageRoute(builder: (context) => const onboarding());

    default:
      return MaterialPageRoute(builder: (context) {
        return Scaffold(
            body: Center(child: Text("No route found}")));
      });
  }
}
