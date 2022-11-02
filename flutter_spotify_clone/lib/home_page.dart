import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/product/texts/texts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //sekmelerin indexi
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          /*
        title: const Text(TextItemsAppBar.appBarTittle),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.av_timer)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      */
          ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(TextItemsAppBar.appBarTittle),
            //expandedHeight:300,
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.av_timer)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  height: 350,
                  color: Colors.white,
                  child: Image.network(
                    'https://picsum.photos/200/300',
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  height: 350,
                  color: Colors.white,
                  child: Image.network(
                    'https://picsum.photos/200/300',
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: BotNavBarColorsNavBar.backGround.withOpacity(.60),
        unselectedItemColor:
            BotNavBarColorsNavBar.unselectedColor.withOpacity(.60),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        //selectedItemColor: Colors.white, -> patlıyor
        fixedColor: BotNavBarColorsNavBar.fixedColor,
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

class BotNavBarColorsNavBar {
  static const Color backGround = Colors.black;
  static const Color unselectedColor = Colors.white;
  static const Color fixedColor = Colors.white;
  static const Color bgColor = Colors.black87;
}
