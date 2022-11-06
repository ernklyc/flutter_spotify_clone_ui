import 'package:flutter/material.dart';

class LibaryPage extends StatefulWidget {
  const LibaryPage({Key? key}) : super(key: key);

  @override
  State<LibaryPage> createState() => _LibaryPageState();
}

class _LibaryPageState extends State<LibaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Libary Page"),
      backgroundColor: Colors.amberAccent,
    );
  }
}
