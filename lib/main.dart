import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/onboarding_page.dart';
import 'package:timeboxing/Scenes/Page/shared_design_page.dart';

enum NavigationPage { sharedDesign, main }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingPage(),
    );
  }
}
