import 'package:flutter/material.dart';
import 'package:ocdear/screen/child_mode/home/learning_screen/widgets/video_card.dart';
import 'package:ocdear/utils/text_style.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 296,
            width: double.infinity,
            child: Image.asset(
              "assets/images/home/learnVideoCard.png",
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(
                      image: AssetImage("assets/images/home/starRate.png"),
                    ),
                    Spacer(),
                    Text(
                      "اسم الفيديو",
                      style: AppTextStyle.textStyleBold18,
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Text(
                  "الوصف",
                  style: AppTextStyle.textStyleBold16,
                ),
                SizedBox(height: 10),
                Text(
                  '''يتم تسليط الضوء على أمثلة واقعية للأفكار الشائعة
مثل خوف من الأوساخ أو الأعداد أو الإصابة بالمرض.
يتم توضيح أن الوسواس القهري ليس خطأً شخصيًا ولا
عيبًا، بل هو اضطراب نفسي يمكن التعامل معه''',
                  style: AppTextStyle.textStyleGrey14,
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 40),
                Text(
                  "فيديوهات آخري",
                  style: AppTextStyle.textStyleBold16,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const VideoPage(),
                ),
              );
            },
            child: Container(
              height: 120,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // itemExtent: 10,
                itemCount: 5,
                itemBuilder: (context, index) =>
                    const VideoCard(image: "assets/images/home/video.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
