import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kite/features/cluster/ui/did_you_know.dart';
import 'package:kite/features/cluster/ui/location.dart';
import 'package:kite/features/cluster/ui/news_paragraph.dart';
import 'package:kite/features/cluster/ui/quote.dart' show Quote;
import 'package:kite/features/cluster/ui/timeline.dart';

void main() {
  testWidgets('test the DidYouKnow widget displaying the given text', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(home: DidYouKnow(text: "Testing is cool.")),
    );

    expect(find.text("Did you know?"), findsOneWidget);
    expect(find.text("Testing is cool."), findsOneWidget);
  });

  testWidgets('test the NewsParagraph widget displaying the given content', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: NewsParagraph(
          title: "Business analysis",
          content: "The current market is booming.",
        ),
      ),
    );

    expect(find.text("Business analysis"), findsOneWidget);
    expect(find.text("The current market is booming."), findsOneWidget);
  });

  testWidgets(
    'test the NewsParagraph widget displaying the given items with a leading bullet point',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: NewsParagraph(
            title: "Financial Analysis",
            items: [
              "The current market is booming.",
              "Business is good world-wide.",
            ],
          ),
        ),
      );

      expect(find.text("Financial Analysis"), findsOneWidget);
      expect(find.text("• The current market is booming."), findsOneWidget);
      expect(find.text("• Business is good world-wide."), findsOneWidget);
    },
  );

  testWidgets('test the Timeline widget displaying a few timeline items', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Timeline(
          items: [
            "March 2025:: This is what happened in March.",
            "April 2025:: April came exactly as expected.",
          ],
        ),
      ),
    );

    expect(find.text("1"), findsOneWidget);
    expect(find.text("2"), findsOneWidget);
    expect(find.text("3"), findsNothing);
    expect(find.text("March 2025"), findsOneWidget);
    expect(find.text("April 2025"), findsOneWidget);
    expect(find.text("May 2025"), findsNothing);
    expect(find.text("This is what happened in March."), findsOneWidget);
    expect(find.text("April came exactly as expected."), findsOneWidget);
  });

  testWidgets('test the Quote widget displaying the given content', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Quote(
          author: "Abdullah Esmail",
          quote: "Kite is the best",
          sourceDomain: "kite.kagi.com",
          sourceUrl: "https://kite.kagi.com",
        ),
      ),
    );

    expect(find.text("Abdullah Esmail (via kite.kagi.com)"), findsOneWidget);
    expect(find.text("Kite is the best"), findsOneWidget);
    expect(find.text("https://kite.kagi.com"), findsNothing);
  });

  testWidgets(
    'test the Location widget displaying the icon with the location text',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(home: Location(location: "Fullerton, CA")),
      );

      expect(find.byIcon(Icons.pin_drop_outlined), findsOneWidget);
      expect(find.text("Fullerton, CA"), findsOneWidget);
    },
  );
}
