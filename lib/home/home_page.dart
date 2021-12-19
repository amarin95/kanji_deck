import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:kanji_deck/home/widgets/kanji_view_card_widget.dart';

import 'widgets/kanji_details_card_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: screenHeight * 0.1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlipCard(
                fill: Fill.fillBack,
                front: KanjiViewCardWidget(
                  height: screenHeight * 0.6,
                  width: screenWidth * 0.7,
                ),
                back: KanjiDetailsCardWidget(
                  height: screenHeight * 0.6,
                  width: screenWidth * 0.7,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.1),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
