import 'package:flutter/material.dart';
import 'package:kanji_deck/kanji_card_view_page/kanji_card_view_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return KanjiCardViewPage(
        screenHeight: screenHeight, screenWidth: screenWidth);
  }
}
