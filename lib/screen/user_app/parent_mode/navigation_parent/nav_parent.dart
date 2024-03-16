import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocdear/screen/user_app/parent_mode/navigation_parent/chat_screen/chat_screen.dart';
import 'package:ocdear/screen/user_app/parent_mode/navigation_parent/doctors_screen/doctor_screen.dart';
import 'package:ocdear/screen/user_app/parent_mode/navigation_parent/profile_screen/profile_parent.dart';
import 'package:ocdear/screen/user_app/parent_mode/navigation_parent/progress_screen/progress_screen.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:ocdear/utils/text_style.dart';

class NavParent extends StatefulWidget {
  const NavParent({Key? key}) : super(key: key);

  @override
  State<NavParent> createState() => _NavParentState();
}

class _NavParentState extends State<NavParent> {
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
                  labelStyle: AppTextStyle.textStyleNormal15),
              CurvedNavigationBarItem(
                  child: SvgPicture.asset("assets/icons/home/Stethoscope.svg"),
                  label: 'الاطباء',
                  labelStyle: AppTextStyle.textStyleNormal15),
              CurvedNavigationBarItem(
                  child: SvgPicture.asset("assets/icons/home/ChatsCircle.svg"),
                  label: 'محادثة',
                  labelStyle: AppTextStyle.textStyleNormal15),
              CurvedNavigationBarItem(
                child: SvgPicture.asset("assets/icons/home/profile.svg"),
                label: 'الملف',
                labelStyle: AppTextStyle.textStyleNormal15,
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
