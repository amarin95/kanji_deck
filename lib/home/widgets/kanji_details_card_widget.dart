import 'package:flutter/material.dart';

class KanjiDetailsCardWidget extends StatelessWidget {
  final double? height;
  final double? width;
  const KanjiDetailsCardWidget({Key? key, this.height, this.width})
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
                  Expanded(flex: 1, child: Center(child: Text("Agua"))),
                  Divider(
                    color: Colors.black,
                  ),
                  Expanded(flex: 1, child: Center(child: Text(""))),
                  Divider(
                    color: Colors.black,
                  ),
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Es el agua de un grifo cayendo y generando gotas a los lados"),
                      )),
                  Divider(
                    color: Colors.black,
                  ),
                  Expanded(flex: 3, child: Text("みず")),
                ],
              ),
            )));
  }
}
