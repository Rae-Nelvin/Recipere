import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/screens/goCipe/GoCipeScreen.dart';
import 'package:recipere/screens/hackCook/HackCookScreen.dart';
import 'package:recipere/screens/home/HomeScreenContent.dart';
import 'package:recipere/screens/profile/ProfileScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeScreenContent(),
    GoCipeScreen(),
    HackCookScreen(),
    ProfileScreen()
  ];

  void _bottomNavbarOnTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), topLeft: Radius.circular(16)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    MaterialSymbols.home_filled_outlined,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    MaterialSymbols.receipt_filled_outlined,
                  ),
                  label: "Go-cipe"),
              BottomNavigationBarItem(
                  icon: Icon(
                    MaterialSymbols.cookie_outlined,
                  ),
                  label: "HackCook"),
              BottomNavigationBarItem(
                  icon: Icon(
                    MaterialSymbols.account_circle_filled_outlined,
                  ),
                  label: "Profile"),
            ],
            iconSize: 32,
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: CustomColors.gray,
            ),
            selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: CustomColors.secondary),
            unselectedItemColor: CustomColors.gray,
            selectedItemColor: CustomColors.secondary,
            currentIndex: _selectedIndex,
            onTap: _bottomNavbarOnTap,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
