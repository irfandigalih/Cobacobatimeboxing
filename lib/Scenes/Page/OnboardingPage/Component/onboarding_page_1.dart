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
          padding: const EdgeInsets.fromLTRB(24, 80, 24, 114),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Time Boxing',
                  style: TimeBoxingTextStyle.headline1Plus(
                    TimeBoxingFontWeight.bold,
                    TimeBoxingColors.text90(TimeBoxingColorType.shade),
                  )),
              RichText(
                  text: TextSpan(
                      text: 'is a',
                      style: TimeBoxingTextStyle.headline1Plus(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.text90(TimeBoxingColorType.shade)),
                      children: <TextSpan>[
                    TextSpan(
                      text: " Daily Planner",
                      style: TimeBoxingTextStyle.headline1Plus(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.primary40(
                              TimeBoxingColorType.shade)),
                    )
                  ])),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Organize tasks, improve productivity, and increase your focus,',
                style: TimeBoxingTextStyle.paragraph1(
                    TimeBoxingFontWeight.regular,
                    TimeBoxingColors.text90(TimeBoxingColorType.shade)),
              ),
              const SizedBox(
                height: 44,
              ),
              Center(
                child: Image.network(
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                    'https://www.american-time.com/wp-content/uploads/2021/02/91-National-24V-12in-Black-Steel-Round-Flush-Mount.jpg'),
              ),
              const Spacer(),
              Center(
                child: Text(
                    textAlign: TextAlign.center,
                    style: TimeBoxingTextStyle.paragraph1(
                        TimeBoxingFontWeight.regular,
                        TimeBoxingColors.text90(TimeBoxingColorType.shade)),
                    'Full access awaits! Please login for a personalized and comprehensive experience.'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(150, 4, 150, 4),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: TimeBoxingColors.primary30(TimeBoxingColorType.shade),
                ),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  textAlign: TextAlign.center,
                  style: TimeBoxingTextStyle.headline4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.neutralWhite()),
                  'Get Started',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
