import 'package:flutter/material.dart' ;
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';

enum TaskPriorityType {
  P0,
  P1,
  P2,
  P3,
  P4;
}

class InvitationCard {
  String username;
  String userAvatar;
  TaskPriorityType? taskPriority;
  String? namePriority;
  Color? color;
  String taskName;
  String taskDate;
  String taskTime;

  InvitationCard({
    required this.username,
    required this.userAvatar,
    required this.taskName,
    required this.taskDate,
    required this.taskTime,
    this.taskPriority,
  }) {
    switch (taskPriority) {
      case TaskPriorityType.P0:
        namePriority = 'Very High )';
        color = TimeBoxingColors.rainbow1();
      case TaskPriorityType.P1:
        namePriority = 'High';
        color = TimeBoxingColors.rainbow8();
      case TaskPriorityType.P2:
        namePriority = 'Medium';
        color = TimeBoxingColors.rainbow2();
      case TaskPriorityType.P3:
        namePriority = 'Low';
        color = TimeBoxingColors.rainbow6();
      case TaskPriorityType.P4:
        namePriority = 'Very Low';
        color = TimeBoxingColors.rainbow7();
      default:
        namePriority = null;
        color = TimeBoxingColors.neutralWhite();
    }
  }
}
