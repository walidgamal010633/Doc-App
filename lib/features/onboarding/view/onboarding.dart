
import 'package:docapp/app/router/path.dart';
import 'package:flutter/material.dart';

class onboarding extends StatelessWidget {
  const onboarding({super.key});
static String routeName = screenpath.onboarding;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("onboarding")),  
    );
  }
}