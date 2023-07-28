import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class OnboardingPage1 extends StatefulWidget {
  const OnboardingPage1({super.key});

  @override
  State<OnboardingPage1> createState() => _OnboardingPage1State();
}

class _OnboardingPage1State extends State<OnboardingPage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Text('timeboxing'),
              RichText(
                  text: TextSpan(
                      text: 'is a',
                      style: TimeBoxingTextStyle.paragraph2(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.neutralBlack()),
                      children: <TextSpan>[
                    TextSpan(
                      text: " Daily Planner",
                      style: TimeBoxingTextStyle.paragraph2(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.neutralBlack()),
                    )
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
