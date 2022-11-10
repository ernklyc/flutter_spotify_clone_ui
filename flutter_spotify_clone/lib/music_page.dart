import 'dart:ui';

import 'package:flutter/material.dart';

import 'product/texts/texts.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 20, 20),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.red[900],
            pinned: true,
            snap: true,
            floating: true,
            stretch: true,
            expandedHeight: 300,
            elevation: 30,
            shadowColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              expandedTitleScale: 1,
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
                StretchMode.blurBackground,
              ],
              title: const Text(
                'ALLAME',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textScaleFactor: 0.8,
              ),
              background: Image.asset(
                'assets/image/allame.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          //-----------------------------

          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Türkiye'nin en sıkı çalma listesi. Kapak: Mavi",
                      style: _TextStyle(),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Image.asset("assets/image/sptfy.jpeg",
                              height: 22)),
                    ),
                    Text(
                      "Spotify",
                      style: _TextStyle(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "1.144.634 beğenme - 2 sa 49 dk",
                    style: _TextStyle(),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Icon(Icons.favorite_border),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.downloading_outlined),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.info_outlined),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Icon(Icons.autorenew_outlined),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.play_circle_filled_sharp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //---------------------
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          //---------------------

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 15, right: 7.5, top: 0, bottom: 0),
                      height: 100,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Image(
                            image: AssetImage(Texts().libaryImage[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 25,
                          width: 250,
                          child: Row(
                            children: [
                              Text(
                                Texts().libaryText[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Container(
                                  child: Icon(
                                    Icons.info_outline,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 250,
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.eight_k_plus_rounded,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                alignment: Alignment.centerRight,
                              ),
                              Text(
                                " Çalma Listesi - ErenKLYC",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              ),
                            ],
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ],
                );
              },
              childCount: 8,
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _TextStyle() =>
      TextStyle(fontWeight: FontWeight.bold, color: Colors.white70);
}
