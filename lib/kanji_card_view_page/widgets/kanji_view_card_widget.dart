import 'package:flutter/material.dart';
import 'package:kanji_deck/kanji_card_view_page/models/kanji_model.dart';

class KanjiViewCardWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final KanjiInfo? kanji;
  const KanjiViewCardWidget({Key? key, this.height, this.width, this.kanji})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: SizedBox(
            height: height,
            width: width,
            child: Center(
              child: Text(
                kanji!.kanjiDrawing!,
                style: const TextStyle(fontSize: 100),
              ),
            )));
  }
}
