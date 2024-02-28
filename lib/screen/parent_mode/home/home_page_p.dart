import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocdear/screen/parent_mode/home/chat_screen/chat_screen.dart';
import 'package:ocdear/screen/parent_mode/home/doctors_screen/doctor_screen.dart';
import 'package:ocdear/screen/parent_mode/home/profile_screen/profile_parent.dart';
import 'package:ocdear/screen/parent_mode/home/progress_screen/progress_screen.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:ocdear/utils/text_style.dart';

class HomePageParentMode extends StatefulWidget {
  const HomePageParentMode({Key? key}) : super(key: key);

  @override
  State<HomePageParentMode> createState() => _HomePageParentModeState();
}

class _HomePageParentModeState extends State<HomePageParentMode> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _selectedIndex,
    );
  }

  final List<Widget> _screens = [
    const ProgressScreen(),
    const DoctorScreen(),
    const ChatScreen(),
    const ParentProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        itemBuilder: (context, index) => _screens[_selectedIndex],
      ),
      bottomNavigationBar: LayoutBuilder(
        builder: (context, constraints) {
          return CurvedNavigationBar(
            backgroundColor: Colors.white,
            index: _selectedIndex,
            items: [
              CurvedNavigationBarItem(
                  child: SvgPicture.asset("assets/icons/home/ChartLine.svg"),
                  label: 'التقدم',
                  labelStyle: AppTextStyle.textStyleDark15),
              CurvedNavigationBarItem(
                  child: SvgPicture.asset("assets/icons/home/Stethoscope.svg"),
                  label: 'الاطباء',
                  labelStyle: AppTextStyle.textStyleDark15),
              CurvedNavigationBarItem(
                  child: SvgPicture.asset("assets/icons/home/ChatsCircle.svg"),
                  label: 'محادثة',
                  labelStyle: AppTextStyle.textStyleDark15),
              CurvedNavigationBarItem(
                child: SvgPicture.asset("assets/icons/home/profile.svg"),
                label: 'الملف',
                labelStyle: AppTextStyle.textStyleDark15,
              ),
            ],
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
                _pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease);
              });
            },
          );
        },
      ),
    );
  }
}
