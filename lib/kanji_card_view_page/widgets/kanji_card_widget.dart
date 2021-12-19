import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:kanji_deck/kanji_card_view_page/widgets/kanji_details_card_widget.dart';
import 'package:kanji_deck/kanji_card_view_page/widgets/kanji_view_card_widget.dart';
import 'package:kanji_deck/kanji_card_view_page/models/kanji_model.dart';

class KanjiCardWidget extends StatefulWidget {
  const KanjiCardWidget({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    this.kanjiList,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final List<KanjiInfo>? kanjiList;

  @override
  State<KanjiCardWidget> createState() => _KanjiCardWidgetState();
}

class _KanjiCardWidgetState extends State<KanjiCardWidget> {
  int _selectedKanjiIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: widget.screenHeight * 0.1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: _selectedKanjiIndex > 0 ? _previousKanji : null),
            FlipCard(
              fill: Fill.fillBack,
              front: KanjiViewCardWidget(
                kanji: widget.kanjiList![_selectedKanjiIndex],
                height: widget.screenHeight * 0.6,
                width: widget.screenWidth * 0.7,
              ),
              back: KanjiDetailsCardWidget(
                kanji: widget.kanjiList![_selectedKanjiIndex],
                height: widget.screenHeight * 0.6,
                width: widget.screenWidth * 0.7,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: _selectedKanjiIndex + 1 != widget.kanjiList?.length
                  ? _nextKanji
                  : null,
            ),
          ],
        ),
        SizedBox(height: widget.screenHeight * 0.1),
      ],
    );
  }

  _nextKanji() {
    setState(() {
      _selectedKanjiIndex++;
    });
  }

  _previousKanji() {
    setState(() {
      _selectedKanjiIndex--;
    });
  }
}
