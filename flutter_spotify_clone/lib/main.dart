import 'package:flutter/material.dart';
import 'page_controll.dart';
import 'product/constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: HomePageColors.spotifyColor,
          elevation: 0,
        ),
      ),
      home: const PageControl(),
    );
  }
}
