import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/pages/home_page.dart';
import 'package:furniture_app/pages/settings_page.dart';
import 'package:furniture_app/utils/my_colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentIndex == 0 ? const HomePage() : const Settingspage(),
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        backgroundColor: MyColors.white, // Customize the background color
        color: MyColors.darkBlue, // Customize the active item color
        buttonBackgroundColor:
            MyColors.darkBlue, // Customize the button background color
        height: 60.0,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(
              Icons.home_filled,
              size: 42,
              color: _currentIndex == 0 ? MyColors.white : MyColors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(
              Icons.settings,
              size: 42,
              color: _currentIndex == 0 ? MyColors.white : MyColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
