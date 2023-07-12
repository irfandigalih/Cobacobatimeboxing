import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Model/invitation_card_model.dart';

class TimeboxingInvitationCard extends StatefulWidget {
  const TimeboxingInvitationCard({super.key});

  @override
  State<TimeboxingInvitationCard> createState() =>
      _TimeboxingInvitationCardState();
}

class _TimeboxingInvitationCardState extends State<TimeboxingInvitationCard> {
  final InvitationCard invitationCard = InvitationCard(
      username: "Galih Clueless",
      taskDate: "June 30, 2023",
      taskTime: "14.00",
      taskName: "Ascendant cuma 1 hari sisanya gold lagi",
      taskPriority: TaskPriorityType.P0,
      userAvatar:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg');
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 6,
            color: TimeBoxingColors.primary80(TimeBoxingColorType.shade),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
              color: TimeBoxingColors.neutralLotion(),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      GestureDetector(
                          onTap: null,
                          child: Row(
                            children: [
                              Text('See More',
                                  style: TimeBoxingTextStyle.paragraph5(
                                      TimeBoxingFontWeight.regular,
                                      TimeBoxingColors.rainbow1())),
                              Icon(
                                Icons.chevron_right,
                                color: TimeBoxingColors.rainbow1(),
                              ),
                            ],
                          )),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage:
                            NetworkImage(invitationCard.userAvatar),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: invitationCard.username,
                                    style: TimeBoxingTextStyle.paragraph2(
                                        TimeBoxingFontWeight.bold,
                                        TimeBoxingColors.neutralBlack()),
                                    children: <TextSpan>[
                                  TextSpan(
                                    text: " invites you to join his activity:",
                                    style: TimeBoxingTextStyle.paragraph2(
                                        TimeBoxingFontWeight.regular,
                                        TimeBoxingColors.neutralBlack()),
                                  )
                                ])),
                            Text(
                              invitationCard.taskName,
                              style: TimeBoxingTextStyle.paragraph2(
                                  TimeBoxingFontWeight.bold,
                                  TimeBoxingColors.neutralBlack()),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 2, 8, 2),
                                  decoration: BoxDecoration(
                                      color: TimeBoxingColors.rainbow1(),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(4))),
                                  child: Text(
                                    invitationCard.namePriority ?? '',
                                    style: TimeBoxingTextStyle.paragraph4(
                                        TimeBoxingFontWeight.bold,
                                        TimeBoxingColors.accent90(
                                            TimeBoxingColorType.tint)),
                                  ),
                                ),
                                //how to make dot icon flutter
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 7.5, 8, 7.5),
                                  width: 4,
                                  height: 4,
                                  decoration: BoxDecoration(
                                      color: TimeBoxingColors.neutralBlack(),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(4))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 2, 8, 2),
                                  child: Text(
                                    invitationCard.taskDate,
                                    style: TimeBoxingTextStyle.paragraph3(
                                        TimeBoxingFontWeight.bold,
                                        TimeBoxingColors.neutralBlack()),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 7.5, 8, 7.5),
                                  width: 4,
                                  height: 4,
                                  decoration: BoxDecoration(
                                      color: TimeBoxingColors.neutralBlack(),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(4))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                  child: Text(
                                    invitationCard.taskTime,
                                    style: TimeBoxingTextStyle.paragraph3(
                                        TimeBoxingFontWeight.bold,
                                        TimeBoxingColors.neutralBlack()),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    decoration: BoxDecoration(
                                        color: TimeBoxingColors.neutralWhite(),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(4)),
                                        border: Border.all(
                                            color: TimeBoxingColors.secondary80(
                                                TimeBoxingColorType.shade),
                                            width: 1)),
                                    child: Text('Decline',
                                        style: TimeBoxingTextStyle.paragraph4(
                                            TimeBoxingFontWeight.bold,
                                            TimeBoxingColors.secondary80(
                                                TimeBoxingColorType.shade))),
                                  ),
                                )),
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                    child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    decoration: BoxDecoration(
                                      color: TimeBoxingColors.primary20(
                                          TimeBoxingColorType.shade),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(4)),
                                    ),
                                    child: Text('Accept',
                                        style: TimeBoxingTextStyle.paragraph4(
                                            TimeBoxingFontWeight.bold,
                                            TimeBoxingColors.primary90(
                                                TimeBoxingColorType.tint))),
                                  ),
                                )),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ), //SEBELUM DEVELOP, ROW JANGAN LUPA DIHAPUS  KARENA HANYA BUAT PENANDA DOANG
            ),
          ),
        ],
      ),
    );
  }
}
