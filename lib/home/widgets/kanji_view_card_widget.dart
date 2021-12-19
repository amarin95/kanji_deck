import 'package:flutter/material.dart';

class KanjiViewCardWidget extends StatelessWidget {
  final double? height;
  final double? width;
  const KanjiViewCardWidget({Key? key, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: SizedBox(
            height: height,
            width: width,
            child: Center(
              child: const Text(
                "水",
                style: TextStyle(fontSize: 100),
              ),
            )));
  }
}
