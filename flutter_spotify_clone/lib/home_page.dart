import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/product/texts/texts.dart';
import 'product/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //sekmelerin indexi
  int _currentIndex = 0;

  final double _selectedFontSize = 12;
  final double _unSelectedFontSize = 12;

  final double _musicBoardHeight = 60;

  final String _imagePath =
      'https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HomePageColors.spotifyColor,
      appBar: AppBar(
        backgroundColor: HomePageColors.spotifyColor,
        title: const Text(TextItemsAppBar.appBarTittle),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.av_timer)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 10, top: 15, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff333333),
                      shape: const StadiumBorder(),
                      minimumSize: const Size(50, 33),
                      textStyle: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    child: const Text(MusicBorderTexts.music),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0, right: 0, top: 15, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff333333),
                      shape: const StadiumBorder(),
                      minimumSize: const Size(60, 33),
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                    child: const Text(MusicBorderTexts.podcast),
                  ),
                ),
              ],
            ),

            //------------------------------------------------------------

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 5, bottom: 5, top: 10),
                    child: Container(
                      height: _musicBoardHeight,
                      color: const Color(0xff333333),
                      child: Image.network(
                        _imagePath,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 20, bottom: 5, top: 10),
                    child: Container(
                      height: _musicBoardHeight,
                      color: const Color(0xff333333),
                      child: Image.network(
                        _imagePath,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 5, bottom: 5, top: 5),
                    child: Container(
                      height: _musicBoardHeight,
                      color: const Color(0xff333333),
                      child: Image.network(
                        _imagePath,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 20, bottom: 5, top: 5),
                    child: Container(
                      height: _musicBoardHeight,
                      color: const Color(0xff333333),
                      child: Image.network(
                        _imagePath,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 5, bottom: 5, top: 5),
                    child: Container(
                      height: _musicBoardHeight,
                      color: const Color(0xff333333),
                      child: Image.network(
                        _imagePath,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 20, bottom: 5, top: 5),
                    child: Container(
                      height: _musicBoardHeight,
                      color: const Color(0xff333333),
                      child: Image.network(
                        _imagePath,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: HomePageColors.black87.withOpacity(.100),
        unselectedItemColor: HomePageColors.white.withOpacity(.60),
        selectedFontSize: _selectedFontSize,
        unselectedFontSize: _unSelectedFontSize,
        fixedColor: HomePageColors.white,
        currentIndex: _currentIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: TextItemsNavBar.navBarBtn1,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: TextItemsNavBar.navBarBtn2,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: TextItemsNavBar.navBarBtn3,
          ),
        ],
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
    );
  }
}
