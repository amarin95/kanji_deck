import 'package:flutter/material.dart';
import 'package:kanji_deck/kanji_card_view_page/models/kanji_model.dart';

class KanjiDetailsCardWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final KanjiInfo? kanji;
  const KanjiDetailsCardWidget({Key? key, this.height, this.width, this.kanji})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: SizedBox(
            height: height,
            width: width,
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Expanded(
                      flex: 1, child: Center(child: Text(kanji!.kanjiKey!))),
                  const Divider(
                    color: Colors.black,
                  ),
                  Expanded(
                      flex: 1,
                      child: Center(child: Text(kanji!.kanjiComponents!))),
                  const Divider(
                    color: Colors.black,
                  ),
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(kanji!.kanjiStory!),
                      )),
                  const Divider(
                    color: Colors.black,
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(kanji!.kanjiPronunciation!),
                  ),
                ],
              ),
            )));
  }
}
