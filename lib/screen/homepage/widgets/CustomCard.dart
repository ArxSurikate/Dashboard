import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rpg_app/modal/graph_data/weekly_mission.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  static const List<String> _days = ["L", "M", "M", "J", "V", "S", "D"];
  @override
  Widget build(BuildContext context) {
    WeeklyMission mission = WeeklyMission.defaultValue();

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: BarChart(
          BarChartData(
              minY: 0,
              maxY: mission.getMaxValue().toDouble() + 10,
              gridData: FlGridData(show: false),
              borderData: FlBorderData(show: false),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                        showTitles: true, getTitlesWidget: getTitlesWidget)),
              ),
              barGroups: mission.datas.asMap().entries.map((e) {
                return BarChartGroupData(
                  x: e.key,
                  barRods: [
                    BarChartRodData(
                      width: 20,
                      borderRadius: BorderRadius.circular(4),
                      toY: e.value.value,
                      // color: mission.getPrimaryColor(e.value.value),
                      color: Color(0xFF4b6584),

                      backDrawRodData: BackgroundBarChartRodData(
                        show: true,
                        toY: mission.getMaxValue() + 10,
                        //color: mission.getSecondaryColor(e.value.value),
                        color: Color(0xFFd1d8e0),
                      ),
                    ),
                  ],
                );
              }).toList()),
        ),
      ),
    );
  }

  Widget getTitlesWidget(double value, TitleMeta meta) {
    return SideTitleWidget(
        space: 5, axisSide: meta.axisSide, child: Text(_days[value.toInt()]));
  }
}
/*
[
                BarChartGroupData(
                  x: 0,
                  barRods: [
                    BarChartRodData(
                      toY: 10,
                      color: Colors.blue,
                      backDrawRodData: BackgroundBarChartRodData(
                        show: true,
                        toY: 20,
                        color: Colors.blue[100],
                      ),
                    ),
                  ],
                ),
                BarChartGroupData(x: 1, barRods: [
                  BarChartRodData(toY: 7, color: Colors.blue),
                ]),
                BarChartGroupData(x: 2, barRods: [
                  BarChartRodData(toY: 11, color: Colors.green),
                ]),
                BarChartGroupData(x: 3, barRods: [
                  BarChartRodData(toY: 2, color: Colors.red),
                ]),
              ]
              */