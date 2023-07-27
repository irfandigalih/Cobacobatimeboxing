import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';

class TaskItem extends Equatable {
  String id;
  String name;
  String time;
  String date;
  String description;
  TaskPriority taskPriority;

  TaskItem({
    required this.id,
    required this.name,
    required this.description,
    required this.time,
    required this.date,
    required this.taskPriority,
  });

  @override
  List<String> get props => [id];
}

enum TaskPriorityType { p0, p1, p2, p3, p4 }

class TaskPriority extends Equatable {
  String id;
  String label = '';
  String name = '';
  Color color = Colors.black;
  TaskPriorityType type;
  int typeWeight = 0;

  TaskPriority({required this.id, required this.type}) {
    switch (type) {
      case TaskPriorityType.p0:
        name = 'Very High';
        label = 'P0';
        color = TimeBoxingColors.rainbow1();
        typeWeight = 0;
      case TaskPriorityType.p1:
        name = 'High';
        label = 'P1';
        color = TimeBoxingColors.rainbow8();
        typeWeight = 1;
      case TaskPriorityType.p2:
        name = 'Normal';
        label = 'P2';
        color = TimeBoxingColors.rainbow4();
        typeWeight = 2;
      case TaskPriorityType.p3:
        name = 'Low';
        label = 'P3';
        color = TimeBoxingColors.rainbow2();
        typeWeight = 3;
      case TaskPriorityType.p4:
        name = 'Very Low';
        label = 'P4';
        color = TimeBoxingColors.rainbow7();
        typeWeight = 4;
    }
  }

  @override
  List<String> get props => [id];
}

class TodayTask extends Equatable {
  TaskPriority taskPriority;
  List<TaskItem> taskItems;

  TodayTask({required this.taskPriority, required this.taskItems});

  @override
  List<String> get props => [taskPriority.id];
}
