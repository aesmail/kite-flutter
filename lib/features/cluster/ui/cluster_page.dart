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
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://kagiproxy.com/img/qghCqF2E_pady28w03Y1H6ykoJqpfDIHmfSntvKpkZ3fIfW2uZs5gTVz5xQIJpQXUHHsXgzNLCNbLSPYxR7ST3OlPh2rwLXktw2kGHzsQsWIpyvOqEZ8nxlKCb7Njv7t08xzib-cd-8",
                ),
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
                itemCount: 4,
                itemBuilder: (context, index) {
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
                              "Drug war controversy",
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
                          "The arrest relates to killings during his administration's controversial drug war and occurred as Duterte returned from Hong Kong where he had attended a gathering with local Filipinos.",
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
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF374151),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "Prices will go up, in Europe and the United States, and jobs are at stake",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {},
                      child: Text(
                        "European Commission President Ursula von der Leyen (via boston.com)",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://kagiproxy.com/img/5kHFWhnSI22KFR9fTw44mPNuL_E5jc9QR-DzMK7tv9LmnuImYDT5BxrkFYfa1-u3TKhaN9azVq0Qp9NgHzLcopNGU-69qfW_G-xxEC10ZGK1Wt95Ojtl0uWQ40FKTUOcV73Amjz9sYN7A7phtfE5cRHDmrkYCccNjkuv",
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Perspectives",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
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
                                "US administration",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "The Arsenal legend suggests his former club can only beat Real Madrid if they approach the tie with the same mentality Leicester City used to win their Premier League title, emphasizing they need tactical discipline despite having more talent.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextButton(
                                onPressed: () {},
                                child: Text("Reddit"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
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
                                "US administration",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "The Arsenal legend suggests his former club can only beat Real Madrid.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextButton(
                                onPressed: () {},
                                child: Text("Reddit"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
                "This marks the second time Trump has imposed sweeping tariffs on steel and aluminum, following similar measures during his first term as president. The previous round of tariffs in 2018 sparked retaliatory measures from trading partners and raised concerns about global trade tensions.",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 40),
              Text(
                "Business angle",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "\u2022 Short-term disruption: The immediate impact will be cost increases across supply chains dependent on imported metals, likely being passed to consumers",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "\u2022 Short-term disruption: The immediate impact will be cost increases across supply chains dependent on imported metals, likely being passed to consumers",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "\u2022 Short-term disruption: The immediate impact will be cost increases across supply chains dependent on imported metals, likely being passed to consumers",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 40),
              Text(
                "International reactions",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Column(
                spacing: 10,
                children: [
                  Container(
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
                          "🇪🇺 European Union",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Announced retaliatory duties on US industrial and agricultural products effective April 1.",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
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
                          "🇪🇺 European Union",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Announced retaliatory duties on US industrial and agricultural products effective April 1.",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
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
                          "🇪🇺 European Union",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Announced retaliatory duties on US industrial and agricultural products effective April 1.",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
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
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "March 12, 2025",
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
                        "Trump administration imposes 25% tariffs on all steel and aluminum imports",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "March 12, 2025",
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
                        "Trump administration imposes 25% tariffs on all steel and aluminum imports",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                            "3",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "March 12, 2025",
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
                        "Trump administration imposes 25% tariffs on all steel and aluminum imports",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
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
                          "The previous steel and aluminum tariffs imposed during Trump's first term had some positive effects on US meta industries but negatively impacted downstream sections.",
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
