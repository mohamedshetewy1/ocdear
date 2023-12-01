import 'package:flutter/material.dart';

class Sliders extends StatelessWidget {
  const Sliders({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: 328,
      child: Stack(
        children: [
          Image.asset("assets/images/sliders_components/Rectangle 16.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('''"مجموعة الفيديوهات تسلط
الضوء على الوسواس القهري
وتقدم معلومات قيمة
واستراتيجيات فعالة لمساعدة
الأشخاص على فهم ومواجهة هذا
الاضطراب النفسي."
'''),
              Image.asset(
                  "assets/images/sliders_components/small child with laptop.png"),
            ],
          )
        ],
      ),
    );
  }
}
