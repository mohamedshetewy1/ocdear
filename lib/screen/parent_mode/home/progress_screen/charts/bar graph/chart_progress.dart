import 'package:flutter/material.dart';
import 'package:ocdear/screen/parent_mode/home/progress_screen/charts/bar%20graph/bar_graph.dart';

class BarChartProgress extends StatefulWidget {
  const BarChartProgress({Key? key}) : super(key: key);

  @override
  State<BarChartProgress> createState() => _BarChartProgressState();
}

class _BarChartProgressState extends State<BarChartProgress> {
  List<double> weeklySummary = [
    25.0,
    36.0,
    56.6,
    10.6,
    93.0,
    83.5,
    6.8,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(5),
                width: 108,
                height: 35,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xff737373), width: 0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff737373),
                    ),
                    Spacer(),
                    Text(
                      "هذا الأسبوع",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff737373),
                        fontFamily: 'ReadexPro',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Text(
              "الحالة التقدمية للطفل",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: 'ReadexPro',
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ممتاز",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: 'ReadexPro',
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "جيد جدا",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: 'ReadexPro',
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "جيد",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: 'ReadexPro',
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "سيئ",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: 'ReadexPro',
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 197,
              width: 300,
              child: MyBarGraph(
                weeklySummary: weeklySummary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
