import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class MYPieChart extends StatelessWidget {
  const MYPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "تقدم الطفل خلال هذا الأسبوع",
                        style: AppTextStyle.textStyleBlack17,
                      ),
                      Gap(10),
                      SizedBox(
                        height: 100,
                        width: 260,
                        child: Text(
                          'يُظهر تقدم الطفل في مواجهة التحديات اليومية وتحسين علاقاته الاجتماعية، مما يشير إلى تطور إيجابي في إدارة وسواسه القهري.',
                          style: AppTextStyle.textStyleGrey14,
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250, bottom: 30),
            child: PieChart(
              PieChartData(
                startDegreeOffset: 50,
                sectionsSpace: 0,
                centerSpaceRadius: 40,
                sections: [
                  PieChartSectionData(
                    value: 75,
                    color: AppColors.normal,
                    radius: 10,
                    showTitle: false,
                  ),
                  PieChartSectionData(
                    value: 20,
                    color: Colors.grey.shade400,
                    radius: 10,
                    showTitle: false,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            left: 60,
            top: 40,
            child: Text(
              "75%",
              style: AppTextStyle.textStyle22,
            ),
          )
        ],
      ),
    );
  }
}
