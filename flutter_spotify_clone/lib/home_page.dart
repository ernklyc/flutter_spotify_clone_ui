import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/libary_page.dart';
import 'package:flutter_spotify_clone/music_page.dart';
import 'product/constants/constants.dart';
import 'product/texts/texts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double _musicBoardHeight = 55;

  final _appBarItems = [
    IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.av_timer)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HomePageColors.spotifyColor,
      appBar: AppBar(
        backgroundColor: HomePageColors.spotifyColor,
        title: const Text(TextItemsAppBar.appBarTittle),
        actions: _appBarItems,
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
            //Üst 6lı
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
                              image: const AssetImage(
                                "assets/image/ibo.jpeg",
                              ),
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
                              image: const AssetImage(
                                "assets/image/vendetta.jpeg",
                              ),
                              alignment: Alignment.bottomLeft,
                              width: 70,
                              height: _musicBoardHeight,
                              fit: BoxFit.contain,
                            ),
                            const Text(
                              "Vendetta!",
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
                              image: const AssetImage(
                                "assets/image/allame.jpeg",
                              ),
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
                              image: const AssetImage(
                                "assets/image/rppjpeg.jpeg",
                              ),
                              alignment: Alignment.bottomLeft,
                              width: 70,
                              height: _musicBoardHeight,
                              fit: BoxFit.contain,
                            ),
                            const Text(
                              "Rec Play Pause",
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
                              image: const AssetImage(
                                "assets/image/kazim.jpeg",
                              ),
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
                              image: const AssetImage(
                                "assets/image/evy.jpeg",
                              ),
                              alignment: Alignment.bottomLeft,
                              width: 70,
                              height: _musicBoardHeight,
                              fit: BoxFit.contain,
                            ),
                            const Text(
                              "Eski ve Yeni",
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
              padding: const EdgeInsets.only(top: 0, left: 15, right: 12),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 55,
                color: Colors.transparent,
                child: const Text(
                  AlbumTitle.squareTitle,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0),
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, bottom: 0, top: 2),
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: Texts().imageList.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 8, top: 2),
                        width: 250,
                        color: Colors.white,
                        child: InkWell(
                          splashColor: Colors.black,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MusicPage(),
                                ));
                          },
                          child: Image(
                            image: AssetImage(Texts().imageList[index]),
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                      Text(
                        Texts().textList[index],
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 0, left: 15, right: 12),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 55,
                color: Colors.transparent,
                child: const Text(
                  AlbumTitle.circleTitle,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                height: 270,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: Texts().imageList.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          splashColor: Colors.black,
                          borderRadius: BorderRadius.circular(100),
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 100,
                            backgroundImage:
                                AssetImage(Texts().singerImageList[index]),
                          ),
                        ),
                      ),
                      Text(
                        Texts().singerNameList[index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
