import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/home_page.dart';
import 'package:flutter_spotify_clone/libary_page.dart';
import 'package:flutter_spotify_clone/product/constants/constants.dart';
import 'package:flutter_spotify_clone/search_page.dart';
import 'product/texts/texts.dart';

class PageControl extends StatefulWidget {
  const PageControl({Key? key}) : super(key: key);

  @override
  State<PageControl> createState() => _PageControlState();
}

class _PageControlState extends State<PageControl> {
  int _currentIndex = 0;

  final bottomNavBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.home), label: TextItemsNavBar.navBarBtn1),
    const BottomNavigationBarItem(
        icon: Icon(Icons.search), label: TextItemsNavBar.navBarBtn2),
    const BottomNavigationBarItem(
        icon: Icon(Icons.library_music), label: TextItemsNavBar.navBarBtn3),
  ];

  final double _selectedFontSize = 12;
  final double _unSelectedFontSize = 12;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const HomePage(title: "Spotify Clone APP"),
          const SearchPage(),
          const LibaryPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: PageContolColors.bottomNavBarColor,
        unselectedItemColor: HomePageColors.white.withOpacity(.60),
        selectedFontSize: _selectedFontSize,
        unselectedFontSize: _unSelectedFontSize,
        fixedColor: HomePageColors.white,
        currentIndex: _currentIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: bottomNavBarItems,
        onTap: (index) {
          setState(
            () {
              _pageController.animateToPage(
                index,
                duration: const Duration(microseconds: 500),
                curve: Curves.linear,
              );
            },
          );
        },
      ),
    );
  }
}
