import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/icons_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({super.key});

  @override
  State<Tutorial> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Tutorial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      color: TimeBoxingColors.neutralWhite(),
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Timeboxing Tutorial',
            style: TimeBoxingTextStyle.headline4(
              TimeBoxingFontWeight.bold,
              TimeBoxingColors.text90(TimeBoxingColorType.shade),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 75,
                    decoration: BoxDecoration(
                      color:
                          TimeBoxingColors.primary50(TimeBoxingColorType.tint),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Image.network(
                        fit: BoxFit.fill,
                        'https://i.kym-cdn.com/entries/icons/original/000/043/403/cover3.jpg'),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TimeBox Priority Creation',
                        style: TimeBoxingTextStyle.paragraph2(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.text(TimeBoxingColorType.shade),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Need a hand for our app? Please ',
                        overflow: TextOverflow.visible,
                        style: TimeBoxingTextStyle.paragraph3(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.text30(TimeBoxingColorType.tint),
                        ),
                      ),
                      Text(
                        'welcome, we got your back!',
                        overflow: TextOverflow.visible,
                        style: TimeBoxingTextStyle.paragraph3(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.text30(TimeBoxingColorType.tint),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                ],
              ),
              Icon(
                Icons.chevron_right,
                size: 16,
                color: TimeBoxingColors.primary40(TimeBoxingColorType.shade),
              )
            ],
          ),
        ],
      ),
    );
  }
}
