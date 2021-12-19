import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:kanji_deck/kanji_card_view_page/models/kanji_model.dart';

import 'widgets/kanji_card_widget.dart';

class KanjiCardViewPage extends StatelessWidget {
  const KanjiCardViewPage({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    List<KanjiInfo> _kanjiExample = [
      KanjiInfo(
          kanjiDrawing: "水",
          kanjiComponents: "",
          kanjiKey: "Agua",
          kanjiPronunciation: "みず",
          kanjiStory:
              "Es el chorro de agua de una fuente salpicando generando gotas a los lados"),
      KanjiInfo(
          kanjiDrawing: "火",
          kanjiComponents: "Persona",
          kanjiKey: "Fuego",
          kanjiPronunciation: "ひ",
          kanjiStory: "Es una persona haciendo malabares con dos antorchas"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Kanji Deck"),
      ),
      body: KanjiCardWidget(
        screenHeight: screenHeight,
        screenWidth: screenWidth,
        kanjiList: _kanjiExample,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Add new card',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
