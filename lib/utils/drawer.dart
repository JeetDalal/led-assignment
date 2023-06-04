import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
// import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:led_assignment/screens/menu_screen.dart';
import 'package:led_assignment/utils/colors.dart';

import '../screens/home.dart';

class HidderDrawer extends StatefulWidget {
  const HidderDrawer({super.key});

  @override
  State<HidderDrawer> createState() => _HidderDrawerState();
}

class _HidderDrawerState extends State<HidderDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final baseStyle = TextStyle(
      color: lightBrown,
      fontSize: 15,
      fontWeight: FontWeight.w500,
    );
    final selectedStyle = TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    );
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: lightBrown,
          name: 'Home',
          baseStyle: baseStyle,
          selectedStyle: selectedStyle,
        ),
        const MenuScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: lightBrown,
          name: 'Indoor',
          baseStyle: baseStyle,
          selectedStyle: selectedStyle,
        ),
        const MenuScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: lightBrown,
          name: 'Outdoor',
          baseStyle: baseStyle,
          selectedStyle: selectedStyle,
        ),
        const MenuScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: lightBrown,
          name: 'Special Offers',
          baseStyle: baseStyle,
          selectedStyle: selectedStyle,
        ),
        const MenuScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: lightBrown,
          name: 'About Us',
          baseStyle: baseStyle,
          selectedStyle: selectedStyle,
        ),
        const MenuScreen(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      disableAppBarDefault: true,
      backgroundColorMenu: blueShade,
      slidePercent: 60,
      withShadow: true,
      enableCornerAnimation: true,
    );
  }
}
