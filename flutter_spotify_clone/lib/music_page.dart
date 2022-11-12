import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
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
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
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
                  padding:
                      const EdgeInsets.only(top: 15, bottom: 10, left: 12, right: 5),
                  child: Text(
                    "Türkiye'nin en sıkı çalma listesi. Kapak: Allame",
                    style: _TextStyle(),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 2, bottom: 2, left: 10, right: 5),
                      child: Image.asset("assets/image/sptfy.jpeg",
                          height: 22),
                    ),
                    Text(
                      "Spotify",
                      style: _TextStyle(),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10, bottom: 0, left: 10, right: 5),
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
                      child: LikeButton(
                        bubblesColor: const BubblesColor(
                            dotPrimaryColor: Colors.green,
                            dotSecondaryColor: Colors.greenAccent,
                            dotLastColor: Colors.black,
                            dotThirdColor: Colors.lightGreen),
                        circleColor: const CircleColor(
                            start: Colors.green, end: Colors.greenAccent),
                        size: 28,
                        animationDuration: const Duration(milliseconds: 1000),
                        likeBuilder: (isTapped) {
                          return isTapped
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.green,
                                  size: 28,
                                )
                              : const Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.white54,
                                  size: 28,
                                );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.downloading_outlined,
                            size: 25,
                            color: Colors.white54,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        // ignore: deprecated_member_use
                        FontAwesomeIcons.ellipsisV,
                        size: 20,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.shuffle,
                              color: Colors.white54,
                              size: 21,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.play_circle_filled_sharp,
                          color: Colors.green,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //---------------------
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          //---------------------

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 15, right: 7.5, top: 0, bottom: 0),
                      height: 60,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(
                            image: AssetImage(Texts().libaryImage[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          //color: Colors.yellow,
                          height: 25,
                          width: 300,
                          child: Row(
                            children: [
                              Text(
                                Texts().libaryText[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                flex: 8,
                                child: LikeButton(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  bubblesColor: const BubblesColor(
                                      dotPrimaryColor: Colors.green,
                                      dotSecondaryColor: Colors.greenAccent,
                                      dotLastColor: Colors.black,
                                      dotThirdColor: Colors.lightGreen),
                                  circleColor: const CircleColor(
                                      start: Colors.green,
                                      end: Colors.greenAccent),
                                  size: 20.0,
                                  animationDuration:
                                      const Duration(milliseconds: 1000),
                                  likeBuilder: (isTapped) {
                                    return isTapped
                                        ? const Icon(
                                            Icons.favorite,
                                            color: Colors.green,
                                            size: 20,
                                          )
                                        : const Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.white54,
                                            size: 20.0,
                                          );
                                  },
                                ),
                              ),
                              Container(
                                //color: Colors.blue,
                                alignment: Alignment.centerRight,
                                //color: Colors.blue,
                                child: const Icon(
                                  // ignore: deprecated_member_use
                                  FontAwesomeIcons.ellipsisV,
                                  size: 15,
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                child: const Icon(
                                  Icons.eight_k_plus_rounded,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                " Çalma Listesi - ErenKLYC",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
              childCount: 16,
            ),
          ),
        ],
      ),
    );
  }


  // ignore: non_constant_identifier_names
  TextStyle _TextStyle() => const TextStyle(
      fontWeight: FontWeight.bold, color: Colors.white70, fontSize: 12);
}
