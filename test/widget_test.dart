import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_pairs/main.dart';
import 'package:random_pairs/src/screens/main_page.dart';

void main() {
  testWidgets('Sees app name', (WidgetTester tester) async {
    await tester.pumpWidget(RandomPairs());

    expect(find.text('Random Pairs'), findsOneWidget);
  });

  testWidgets('Adds new name to the list', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MainPage()
          )
        )
      );

      await tester.enterText(find.byType(TextField), 'Jhon');
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      expect(find.text('Jhon'), findsOneWidget);
   });
}
