import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:recipere/configs/CustomColors.dart';
import 'package:recipere/screens/Gocipe/GoCipeScreen.dart';
import 'package:recipere/screens/HackCook/HackCookScreen.dart';
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
          elevation: 0,
          backgroundColor: CustomColors.white,
          flexibleSpace: const SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 17, left: 24, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Joy!",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: CustomColors.primary,
                      fontSize: 36,
                    ),
                  ),
                  Text(
                    "Good Night🌙",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: CustomColors.secondary,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 33),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    MaterialSymbols.notifications_outlined,
                    color: CustomColors.primary,
                    size: 30,
                  )),
            )
          ],
        ),
      ),
      backgroundColor: CustomColors.white,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
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
                    MaterialSymbols.home_outlined,
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
