import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key, required this.highlights});

  final List<String> highlights;

  @override
  Widget build(BuildContext context) {
    if (highlights.isEmpty) {
      return const SizedBox.shrink();
    }

    return Wrap(
      children: [
        Text(
          "Highlights",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 40),
        DottedLine(
          direction: Axis.horizontal,
          dashLength: 4,
          dashColor: Colors.white24,
        ),
        ListView.separated(
          shrinkWrap: true,
          primary: false,
          separatorBuilder:
              (context, index) => DottedLine(
                direction: Axis.horizontal,
                dashLength: 4,
                dashColor: Colors.white24,
              ),
          itemCount: highlights.length,
          itemBuilder: (context, index) {
            final highlightHeader = highlights[index].split(":")[0];
            final highlightText = highlights[index].split(":")[1];
            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        highlightHeader,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    highlightText,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
