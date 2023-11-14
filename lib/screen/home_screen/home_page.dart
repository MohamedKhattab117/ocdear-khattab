import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/screen/home_screen/widgets/details_home.dart';

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
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.pinkAccent,
    ),
    Container(
      color: Colors.greenAccent,
    ),
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
              label: 'الرئيسيه',
              labelStyle: const TextStyle(color: AppColors.dark)),
          CurvedNavigationBarItem(
              child: SvgPicture.asset("assets/icons/home/learn.svg"),
              label: 'التلعم',
              labelStyle: const TextStyle(color: AppColors.dark)),
          CurvedNavigationBarItem(
              child: SvgPicture.asset("assets/icons/home/games.svg"),
              label: 'الالعاب',
              labelStyle: const TextStyle(color: AppColors.dark)),
          CurvedNavigationBarItem(
              child: SvgPicture.asset("assets/icons/home/to do.svg"),
              label: 'المهام',
              labelStyle: const TextStyle(color: AppColors.dark)),
          CurvedNavigationBarItem(
              child: SvgPicture.asset("assets/icons/home/profile.svg"),
              label: 'الملف الشخصي',
              labelStyle: const TextStyle(
                color: AppColors.dark,
              )),
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
