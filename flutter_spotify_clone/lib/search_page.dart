import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/product/texts/texts.dart';
import 'product/constants/constants.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PageContolColors.bottomNavBarColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            bottom: AppBar(
              backgroundColor: PageContolColors.bottomNavBarColor,
              title: SizedBox(
                height: 45,
                child: TextFormField(
                  style: const TextStyle(
                    color: PageContolColors.bottomNavBarColor,
                    fontSize: 14,
                  ),
                  cursorColor: PageContolColors.bottomNavBarColor,
                  decoration: const InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.black),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Ne Dinlemek İstiyorsun",
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: PageContolColors.bottomNavBarColor,
            expandedHeight: 110,
            title: const Text("Ara"),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
              child: Center(
                  child: Text(
                "Hepsine Göz At",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 15, right: 7.5, top: 10, bottom: 7.5),
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                            borderRadius: BorderRadius.circular(5)),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              Texts().searchPageListLeft[index],
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 7.5, right: 15, top: 10, bottom: 7.5),
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                            borderRadius: BorderRadius.circular(5)),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              Texts().searchPageListRight[index],
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
