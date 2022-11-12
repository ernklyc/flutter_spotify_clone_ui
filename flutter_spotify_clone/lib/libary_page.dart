// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'product/texts/texts.dart';

class LibaryPage extends StatefulWidget {
  const LibaryPage({Key? key}) : super(key: key);

  @override
  State<LibaryPage> createState() => _LibaryPageState();
}

class _LibaryPageState extends State<LibaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            shadowColor: Colors.black,
            expandedHeight: 120,
            collapsedHeight: 70,
            elevation: 10,
            actions: const [
              Icon(Icons.search),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(Icons.add),
              ),
            ],

            //--------------------------------------------------------------------

            title: Row(
              children: [
                SizedBox(
                  width: 35,
                  child: Image.asset(
                    "assets/image/eren.jpeg",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Kitaplığım",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),

            //--------------------------------------------------------------------

            flexibleSpace: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: SizedBox(
                    height: 130,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 10, top: 15, bottom: 10),
                          child: OutlinedButton(
                            style: _stylFrm(),
                            onPressed: () {},
                            child: const Text(
                              'Çalma Listeleri',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 0, right: 10, top: 15, bottom: 10),
                          child: OutlinedButton(
                            style: _stylFrm(),
                            onPressed: () {},
                            child: const Text(
                              'İndirilenler',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //--------------------------------------------------------------------
          ),

          //--------------------------------------------------------------------

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: const Icon(Icons.sort),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Alfabetik",
                            style: TextStyle(fontSize: 14),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: Container(
                        alignment: Alignment.topRight,
                        child: const Icon(Icons.list),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //--------------------------------------------------------------------

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 15, right: 7.5, top: 0, bottom: 0),
                      height: 100,
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
                          height: 25,
                          width: 250,
                          child: Text(
                            Texts().libaryText[index],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: Row(
                            children: [
                              Container(
                                child: const Icon(
                                  Icons.arrow_circle_down_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                alignment: Alignment.centerLeft,
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

  ButtonStyle _stylFrm() {
    return OutlinedButton.styleFrom(
      primary: const Color.fromARGB(255, 192, 190, 190),
      side: const BorderSide(color: Color.fromARGB(255, 94, 93, 93), width: 1.5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      minimumSize: const Size(50, 30),
    );
  }
}
