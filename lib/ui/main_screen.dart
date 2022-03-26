import 'package:ecocart/ui/cart_screen.dart';
import 'package:ecocart/ui/common/color_theme.dart';
import 'package:ecocart/ui/controllers/main_screen_controllers.dart';
import 'package:ecocart/ui/home_screen.dart';
import 'package:ecocart/ui/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomeScreen(),
            CartScreen(),
            SettingsScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorSystem.of(context).primaryColor,
          elevation: 0.0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
          selectedLabelStyle: const TextStyle(fontSize: 16),
          unselectedLabelStyle: const TextStyle(fontSize: 16),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings_solid),
              label: 'Settings',
            ),
          ],
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
        ),
      );
    });
  }
}
