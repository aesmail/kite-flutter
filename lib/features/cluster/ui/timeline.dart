import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  final List<String> items;

  const Timeline({super.key, this.items = const []});

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Timeline of events",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Column(
          spacing: 20,
          children:
              items.asMap().entries.map((event) {
                final date = event.value.split("::")[0].trim();
                final text = event.value.split("::")[1].trim();
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xFF6285F1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              (event.key + 1).toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            date,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: TextStyle(
                              color: Color(0xFF6285F1),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Container(
                        padding: EdgeInsets.only(left: 16),
                        decoration: BoxDecoration(
                          color: Color(0xFF1A202C),
                          boxShadow: [
                            // do not draw shadow if it's the last item
                            if (items.length != (event.key + 1))
                              BoxShadow(
                                color: Color(0xFF6285F1),
                                blurRadius: 0,
                                offset: Offset(-2, 0),
                              ),
                          ],
                        ),
                        child: Text(
                          text,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ],
    );
  }
}
