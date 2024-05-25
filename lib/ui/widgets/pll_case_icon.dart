import 'package:flutter/material.dart';

class PLLCaseIcon extends StatelessWidget {
  final List caseConfiguration;
  const PLLCaseIcon(this.caseConfiguration, {super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = List.generate(22, (_) => const Color.fromRGBO(125, 125, 125, 1));

    for (int index in caseConfiguration) {
      colors[index] = Colors.yellow;
    }

    // breite mittelstein: 9
    // breite randstein: 3
    // insgesamte breite: 39
    // breite ohne rand: 31

    return SizedBox(
      child: AspectRatio(
        aspectRatio: 1,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(flex: 4, child: Container(color: Colors.transparent)),
                  Expanded(flex: 31, child: Container(color: Colors.black)),
                  Expanded(flex: 4, child: Container(color: Colors.transparent)),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(flex: 4, child: Container(color: Colors.transparent)),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: colors[1])),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: colors[2])),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: colors[3])),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 4, child: Container(color: Colors.transparent)),
                ],
              ),
            ),
            Expanded(child: Container(color: Colors.black)),
            Expanded(
              flex: 9,
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 3, child: Container(color: colors[4])),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: Colors.yellow)),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: Colors.yellow)),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: Colors.yellow)),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 3, child: Container(color: colors[8])),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                ],
              ),
            ),
            Expanded(child: Container(color: Colors.black)),
            Expanded(
              flex: 9,
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 3, child: Container(color: colors[9])),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: Colors.yellow)),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: Colors.yellow)),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: Colors.yellow)),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 3, child: Container(color: colors[13])),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                ],
              ),
            ),
            Expanded(child: Container(color: Colors.black)),
            Expanded(
              flex: 9,
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 3, child: Container(color: colors[14])),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: Colors.yellow)),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: Colors.yellow)),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: Colors.yellow)),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 3, child: Container(color: colors[18])),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                ],
              ),
            ),
            Expanded(child: Container(color: Colors.black)),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(flex: 4, child: Container(color: Colors.transparent)),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: colors[19])),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: colors[20])),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 9, child: Container(color: colors[21])),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 4, child: Container(color: Colors.transparent)),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(flex: 4, child: Container(color: Colors.transparent)),
                  Expanded(flex: 31, child: Container(color: Colors.black)),
                  Expanded(flex: 4, child: Container(color: Colors.transparent)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
