import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:shopping/common/widget/chart.dart';
import 'package:shopping/utils/constants/colors.dart';
import 'package:shopping/utils/constants/sizes.dart';

class Budget extends StatelessWidget {
  const Budget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(TSizes.md),
              margin: EdgeInsets.all(TSizes.sm),
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(TSizes.md),
              margin: EdgeInsets.all(TSizes.sm),
              decoration: const BoxDecoration(
                color: TColors.secondaryBackground,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const Column(
                children: [
                  Text(
                    "Usage Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Chart()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
