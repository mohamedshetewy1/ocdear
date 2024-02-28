import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class MYPieChart extends StatelessWidget {
  const MYPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: double.infinity,
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "تقدم الطفل خلال هذا الأسبوع",
                      style: AppTextStyle.textStyleBold18,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "يظهر تقدم الطفل في مواجهة التحديات \nاليوميه وتحسين علاقته الاجتماعيه مما\n يشير الى تطور ايجابي في ادارة وسواسه\n القهري",
                      style: AppTextStyle.textStyle14,
                    )
                  ],
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 280),
            child: PieChart(
              PieChartData(
                startDegreeOffset: 50,
                sectionsSpace: 0,
                centerSpaceRadius: 35,
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
            left: 45,
            top: 48,
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
