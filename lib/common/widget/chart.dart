import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:shopping/utils/constants/colors.dart';


class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 70,
                startDegreeOffset: -90,
                sections: paiChartSelectionData),
          ),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "25.4K",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
              ),
              Text("of 50K")
            ],
          ))
        ],
      ),
    );
  }
}

List<PieChartSectionData> paiChartSelectionData = [
  PieChartSectionData(
      color: TColors.one, value: 15, showTitle: false, radius: 20),
  PieChartSectionData(
      color: TColors.two, value: 15, showTitle: false, radius: 22),
  PieChartSectionData(
      color: TColors.three, value: 15, showTitle: false, radius: 18),
  PieChartSectionData(
      color: TColors.five, value: 17, showTitle: false, radius: 21),
];