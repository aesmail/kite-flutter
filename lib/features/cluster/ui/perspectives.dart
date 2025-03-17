import 'package:flutter/material.dart';

class Perspectives extends StatelessWidget {
  final List<Map> perspectives;

  const Perspectives({super.key, this.perspectives = const []});

  @override
  Widget build(BuildContext context) {
    if (perspectives.isEmpty) {
      return SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Perspectives",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:
                  perspectives.map((perspective) {
                    final title = perspective['text'].split(":")[0];
                    final text = perspective['text'].split(":")[1];
                    final source = perspective['sources'][0];
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        // height: 120,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Color(0xFF374151),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              text,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10),
                            TextButton(
                              onPressed: () {
                                debugPrint("Go to: ${source['url']}");
                              },
                              child: Text(source['name']),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
