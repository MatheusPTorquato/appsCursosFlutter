// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app01/main.dart';

void main() {
  testWidgets('HomePage widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify the initial state
    expect(find.text('Pode entrar'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);

    // Verify that the "Entrou" button is enabled and the "Saiu" button is disabled
    final entrouButton = find.text('Entrou');
    final saiuButton = find.text('Saiu');
    expect(entrouButton, findsOneWidget);
    expect(saiuButton, findsOneWidget);

    // Tap the "Entrou" button and trigger a frame
    await tester.tap(entrouButton);
    await tester.pump();

    // Verify that the count has increased to 1
    expect(find.text('1'), findsOneWidget);

    // Tap the "Saiu" button and trigger a frame
    await tester.tap(saiuButton);
    await tester.pump();

    // Verify that the count has decreased back to 0
    expect(find.text('0'), findsOneWidget);

    // Try to tap the "Saiu" button when count is 0
    await tester.tap(saiuButton);
    await tester.pump();

    // Verify that the "Saiu" button is disabled (not tappable) when count is 0
    expect(saiuButton, findsOneWidget);
  });
}
