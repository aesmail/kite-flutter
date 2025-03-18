import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:kite/features/cluster/ui/business_angle.dart';
import 'package:kite/features/cluster/ui/did_you_know.dart';
import 'package:kite/features/cluster/ui/highlights.dart';
import 'package:kite/features/cluster/ui/news_paragraph.dart';
import 'package:kite/features/cluster/ui/international_reactions.dart';
import 'package:kite/features/cluster/ui/location.dart';
import 'package:kite/features/cluster/ui/news_image.dart';
import 'package:kite/features/cluster/ui/news_title.dart';
import 'package:kite/features/cluster/ui/perspectives.dart';
import 'package:kite/features/cluster/ui/quote.dart';
import 'package:kite/features/cluster/ui/short_summary.dart';
import 'package:kite/features/cluster/ui/timeline.dart';
import 'package:kite/models/cluster.dart';

class ClusterPage extends StatelessWidget {
  const ClusterPage({super.key, required this.cluster});

  final Cluster cluster;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A202C),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(cluster.category, style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Color(0xFF1A202C),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NewsTitle(title: cluster.title),
                SizedBox(height: 50),
                ShortSummary(shortSummary: cluster.shortSummary),
                SizedBox(height: 30),
                Location(location: cluster.location),
                SizedBox(height: 30),
                NewsImage(image: cluster.getImage(0)),
                SizedBox(height: 40),
                Highlights(highlights: cluster.talkingPoints),
                DottedLine(
                  direction: Axis.horizontal,
                  dashLength: 4,
                  dashColor: Colors.white24,
                ),
                SizedBox(height: 40),
                Quote(
                  quote: cluster.quote,
                  author: cluster.quoteAuthor,
                  sourceDomain: cluster.quoteSourceDomain,
                  sourceUrl: cluster.quoteSourceUrl,
                ),
                SizedBox(height: 40),
                NewsImage(image: cluster.getImage(1)),
                SizedBox(height: 40),
                Perspectives(perspectives: cluster.perspectives),
                NewsParagraph(
                  title: "Historical Background",
                  content: cluster.historicalBackground,
                ),
                NewsParagraph(
                  title: "Humanitarian Impact",
                  content: cluster.humanitarianImpact,
                ),
                NewsParagraph(
                  title: "Technical details",
                  items: cluster.technicalDetails,
                ),
                NewsParagraph(
                  title: "Scientific signifinance",
                  items: cluster.scientificSignificance,
                ),
                NewsParagraph(
                  title: "Performance statistics",
                  items: cluster.performanceStatistics,
                ),
                NewsParagraph(
                  title: "League standings",
                  content: cluster.leagueStandings,
                ),
                // SizedBox(height: 40),
                BusinessAngle(
                  text: cluster.businessAngleText,
                  angles: cluster.businessAnglePoints,
                ),
                InternationalReactions(
                  reactions: cluster.internationalReactions,
                ),
                SizedBox(height: 40),
                Timeline(items: cluster.timeline),
                DidYouKnow(text: cluster.didYouKnow),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
