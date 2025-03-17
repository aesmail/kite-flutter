import 'dart:convert';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Color(0xFF1A202C),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cluster.title,
                style: TextStyle(color: Colors.white, fontSize: 22),
                maxLines: 3,
              ),
              SizedBox(height: 50),
              Text(
                cluster.shortSummary,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 30),
              if (cluster.location.isNotEmpty)
                Row(
                  spacing: 10,
                  children: [
                    Icon(Icons.pin_drop_outlined, color: Colors.white),
                    Text(
                      cluster.location,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              SizedBox(height: 30),
              if (cluster.imageAvailable(0))
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(cluster.getImage(0)['image']!),
                ),
              SizedBox(height: 40),
              Text(
                "Highlights",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
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
                itemCount: cluster.talkingPoints.length,
                itemBuilder: (context, index) {
                  final highlightHeader =
                      cluster.talkingPoints[index].split(":")[0];
                  final highlightText =
                      cluster.talkingPoints[index].split(":")[1];
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
              DottedLine(
                direction: Axis.horizontal,
                dashLength: 4,
                dashColor: Colors.white24,
              ),
              SizedBox(height: 40),
              if (cluster.quote.isNotEmpty)
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF374151),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cluster.quote,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      if (cluster.quoteAuthor.isNotEmpty)
                        TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          onPressed: () {},
                          child: Text(
                            cluster.quoteSource(),
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                    ],
                  ),
                ),
              SizedBox(height: 40),
              if (cluster.imageAvailable(1))
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    cluster.getImage(1)['image']!,
                    fit: BoxFit.cover,
                  ),
                ),
              SizedBox(height: 40),
              if (cluster.perspectives.isNotEmpty)
                Column(
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
                              cluster.perspectives.map((perspective) {
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                            debugPrint(
                                              "Go to: ${source['url']}",
                                            );
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
                ),
              if (cluster.historicalBackground.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Text(
                      "Historical background",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      cluster.historicalBackground,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              if (cluster.humanitarianImpact.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Text(
                      "Humanitarian impact",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      cluster.humanitarianImpact,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              // SizedBox(height: 40),
              // Text(
              //   "Business angle",
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 22,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // SizedBox(height: 20),
              // Text(
              //   "\u2022 Short-term disruption: The immediate impact will be cost increases across supply chains dependent on imported metals, likely being passed to consumers",
              //   style: TextStyle(color: Colors.white, fontSize: 16),
              // ),
              // SizedBox(height: 20),
              // Text(
              //   "\u2022 Short-term disruption: The immediate impact will be cost increases across supply chains dependent on imported metals, likely being passed to consumers",
              //   style: TextStyle(color: Colors.white, fontSize: 16),
              // ),
              // SizedBox(height: 20),
              // Text(
              //   "\u2022 Short-term disruption: The immediate impact will be cost increases across supply chains dependent on imported metals, likely being passed to consumers",
              //   style: TextStyle(color: Colors.white, fontSize: 16),
              // ),
              if (cluster.internationalReactions.isNotEmpty)
                Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "International reactions",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (cluster.internationalReactions.isNotEmpty)
                      ...cluster.internationalReactions.map((reaction) {
                        final List<int> rawCountry =
                            reaction.split(":")[0].runes.toList();
                        final country = utf8.decode(rawCountry);
                        final text = reaction.split(":")[1];
                        return Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF374151),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            spacing: 10,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                country,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                text,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                  ],
                ),
              SizedBox(height: 40),
              if (cluster.timeline.isNotEmpty)
                Column(
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
                          cluster.timeline.asMap().entries.map((event) {
                            final date = event.value.split("::")[0];
                            final text = event.value.split("::")[1];
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
                                    Text(
                                      date,
                                      style: TextStyle(
                                        color: Color(0xFF6285F1),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 20),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1A202C),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFF6285F1),
                                          blurRadius: 0,
                                          offset: Offset(-2, 0),
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      text,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                    ),
                  ],
                ),
              if (cluster.didYouKnow.isNotEmpty)
                Column(
                  children: [
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xAA293A5E),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Did you know?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            cluster.didYouKnow,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
