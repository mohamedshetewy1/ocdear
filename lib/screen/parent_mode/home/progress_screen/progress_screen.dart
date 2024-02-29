import 'package:flutter/material.dart';
import 'package:ocdear/screen/parent_mode/home/progress_screen/charts/bar%20graph/chart_progress.dart';
import 'package:ocdear/screen/parent_mode/home/progress_screen/charts/pie_chart/pie_chart.dart';
import 'package:ocdear/screen/parent_mode/home/widgets/welcome_parent.dart';
import '../widgets/slider_p.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const WelcomeParent(),
              const SizedBox(height: 25),
              const SliderParent(),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 329,
                  height: 282,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const BarChartProgress(),
                ),
              ),

              const SizedBox(height: 25),
              const MYPieChart(),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Image.asset(
                  "assets/images/progress_3.png",
                  fit: BoxFit.fill,
                ),
              ),

              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.33,
              //   child: Image.asset(
              //     "assets/images/progress_3.png",
              //     fit: BoxFit.fill,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// import 'package:ocdear/screen/parent_mode/home/widgets/welcome_parent.dart';

// import '../widgets/slider_p.dart';

// class ProgressScreen extends StatelessWidget {
//   const ProgressScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               const WelcomeParent(),
//               const SizedBox(
//                 height: 25,
//               ),
//               const SliderParent(),
//               const SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 285,
//                 decoration: const BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/progress_1.png"),
//                         fit: BoxFit.fill)),
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 200,
//                 decoration: const BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/progress_2.png"),
//                         fit: BoxFit.fill)),
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 330,
//                 decoration: const BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/progress_3.png"),
//                         fit: BoxFit.fill)),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
