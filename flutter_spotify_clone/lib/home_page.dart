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

  final double _musicBoardHeight = 55;

  final String _imagePath =
      'https://developer.spotify.com/assets/branding-guidelines/icon4@2x.png';

  final String _imagePath2 =
      'https://i.scdn.co/image/ab67616d0000b27308f7aa608f3d2495859c0d7d';

  final String _imagePath3 =
      'https://i.scdn.co/image/ab67616d0000b273e2e3e3efc45e4d59395f22d9';

  final String _imagePath4 =
      'https://i.scdn.co/image/ab67616d0000b2739cdb765ce61bae88380d9940';

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
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 10, top: 15, bottom: 10),
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

            //------------------------------------------------------------------

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 5, bottom: 5, top: 5),
                    child: Material(
                      color: const Color(0xff333333),
                      borderRadius: BorderRadius.circular(5),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: NetworkImage(_imagePath2),
                              alignment: Alignment.bottomLeft,
                              width: 70,
                              height: _musicBoardHeight,
                              fit: BoxFit.contain,
                            ),
                            const Text(
                              "Mutlu Ol Yeter",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //---
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 12, bottom: 5, top: 5),
                    child: Material(
                      color: const Color(0xff333333),
                      borderRadius: BorderRadius.circular(5),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: NetworkImage(_imagePath),
                              alignment: Alignment.bottomLeft,
                              width: 70,
                              height: _musicBoardHeight,
                              fit: BoxFit.contain,
                            ),
                            const Text(
                              "Eller Günahkar",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
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
                        left: 12, right: 5, bottom: 5, top: 5),
                    child: Material(
                      color: const Color(0xff333333),
                      borderRadius: BorderRadius.circular(5),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Row(
                          //mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: NetworkImage(_imagePath3),
                              alignment: Alignment.bottomLeft,
                              width: 70,
                              height: _musicBoardHeight,
                              fit: BoxFit.contain,
                            ),
                            const Text(
                              "Pisişik",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //---
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 12, bottom: 5, top: 5),
                    child: Material(
                      color: const Color(0xff333333),
                      borderRadius: BorderRadius.circular(5),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: NetworkImage(_imagePath),
                              alignment: Alignment.bottomLeft,
                              width: 70,
                              height: _musicBoardHeight,
                              fit: BoxFit.contain,
                            ),
                            const Text(
                              "Tükeneceğiz",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
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
                        left: 12, right: 5, bottom: 5, top: 5),
                    child: Material(
                      color: const Color(0xff333333),
                      borderRadius: BorderRadius.circular(5),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Row(
                          //mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: NetworkImage(_imagePath4),
                              alignment: Alignment.bottomLeft,
                              width: 70,
                              height: _musicBoardHeight,
                              fit: BoxFit.contain,
                            ),
                            const Text(
                              "Uy Aha",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //---
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 12, bottom: 5, top: 5),
                    child: Material(
                      color: const Color(0xff333333),
                      borderRadius: BorderRadius.circular(5),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: NetworkImage(_imagePath),
                              alignment: Alignment.bottomLeft,
                              width: 70,
                              height: _musicBoardHeight,
                              fit: BoxFit.contain,
                            ),
                            const Text(
                              "Şinanay",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: SizedBox(
                height: 250,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Container(color: Colors.red, width: 100),
                  Container(color: Colors.blue, width: 100),
                  const SizedBox(width: 20),
                  Container(color: Colors.red, width: 100),
                  Container(color: Colors.blue, width: 100),
                  const SizedBox(width: 20),
                  Container(color: Colors.red, width: 100),
                  Container(color: Colors.blue, width: 100),
                ]),
              ),
            ),

            //--------------------------------------------------------------------

            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: SizedBox(
                height: 250,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  SizedBox(
                      width: 300,
                      child: Image.network(
                        _imagePath,
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(width: 20),
                  SizedBox(
                      width: 300,
                      child: Image.network(
                        _imagePath,
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(width: 20),
                  SizedBox(
                      width: 300,
                      child: Image.network(
                        _imagePath,
                        fit: BoxFit.cover,
                      )),
                ]),
              ),
            ),
          ],
        ),
      ),

      //------------------------------------------------------------------------

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
