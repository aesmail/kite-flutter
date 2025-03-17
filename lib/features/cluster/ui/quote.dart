import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  final String quote;
  final String author;
  final String sourceUrl;
  final String sourceDomain;

  const Quote({
    super.key,
    this.quote = "",
    this.author = "",
    this.sourceUrl = "",
    this.sourceDomain = "",
  });

  @override
  Widget build(BuildContext context) {
    if (quote.isEmpty) {
      return SizedBox.shrink();
    }
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF374151),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(quote, style: TextStyle(color: Colors.white, fontSize: 18)),
          SizedBox(height: 10),
          if (author.isNotEmpty)
            TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              onPressed: () {
                debugPrint("Visit: $sourceUrl");
              },
              child: Text(quoteSource(), style: TextStyle(fontSize: 15)),
            ),
        ],
      ),
    );
  }

  String quoteSource() {
    if (author.isEmpty) {
      return "";
    } else {
      return "$author (via $sourceDomain)";
    }
  }
}
