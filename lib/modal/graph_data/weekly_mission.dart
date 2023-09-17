import 'package:flutter/material.dart';

class WeeklyMission {
  final List<DailyResult> datas;

  WeeklyMission({required this.datas});

  WeeklyMission.defaultValue()
    : datas = [
      DailyResult(value: 1),
      DailyResult(value: 25),
      DailyResult(value: 12),
      DailyResult(value: 13),
      DailyResult(value: 6),
      DailyResult(value: 12),
      DailyResult(value: 11),
    ];

  double getMaxValue() {
    return datas.reduce((a, b) => a.value > b.value ? a : b).value;
  }

  double getMinValue() {
    return datas.reduce((a, b) => a.value < b.value ? a : b).value;
  }

  Color getPrimaryColor(double val) {
    if (val == getMaxValue()) {
      return Colors.green;
    } else if (val == getMinValue()) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }

  Color getSecondaryColor(double val) {
    if (val == getMaxValue()) {
      return Colors.green[100]!;
    } else if (val == getMinValue()) {
      return Colors.red[100]!;
    } else {
      return Colors.blue[100]!;
    }
  }
}

class DailyResult {
  final double value;

  DailyResult({required this.value});
}
