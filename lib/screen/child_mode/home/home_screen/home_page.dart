import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocdear/screen/child_mode/home/game_screen/games_screen.dart';
import 'package:ocdear/screen/child_mode/home/home_screen/widgets/details_home.dart';
import 'package:ocdear/screen/child_mode/home/learning_screen/learning_screen.dart';
import 'package:ocdear/screen/child_mode/home/profile_screen/profile_screen.dart';
import 'package:ocdear/screen/child_mode/home/todo_screen/todo_tab.dart';
import 'package:ocdear/utils/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    const DetailsHome(),
    const LearningTab(),
    const GamesHome(),
    const TodoTab(),
    const ProfileScreen()
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
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        index: _selectedIndex,
        items: [
          CurvedNavigationBarItem(
              child: SvgPicture.asset("assets/icons/home/home.svg"),
              label: 'الرئيسية',
              labelStyle: AppTextStyle.textStyleDark15),
          CurvedNavigationBarItem(
              child: SvgPicture.asset("assets/icons/home/learn.svg"),
              label: 'التعلم',
              labelStyle: AppTextStyle.textStyleDark15),
          CurvedNavigationBarItem(
              child: SvgPicture.asset("assets/icons/home/games.svg"),
              label: 'الالعاب',
              labelStyle: AppTextStyle.textStyleDark15),
          CurvedNavigationBarItem(
              child: SvgPicture.asset("assets/icons/home/to do.svg"),
              label: 'المهام',
              labelStyle: AppTextStyle.textStyleDark15),
          CurvedNavigationBarItem(
              child: SvgPicture.asset("assets/icons/home/profile.svg"),
              label: 'الملف',
              labelStyle: AppTextStyle.textStyleDark15),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
          });
        },
      ),
    );
  }
}
