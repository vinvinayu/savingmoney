import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savingmoneys/main.dart'; // Ensure this path is correct

void main() {
  testWidgets('App starts and displays login page', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(SavingMoneysApp());

    // Verify that the login page is displayed.
    expect(find.text('Welcome to SavingMoneys'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2)); // Check for two text fields
    expect(find.text('Login'), findsOneWidget);
  });

  testWidgets('Navigate to HomePage after login', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(SavingMoneysApp());

    // Tap the login button.
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle(); // Wait for the navigation to complete

    // Verify that the HomePage is displayed.
    expect(find.text('Welcome to your Dashboard!'), findsOneWidget);
    expect(find.text('Add Transaction'), findsOneWidget);
  });

  testWidgets('Navigate to Add Transaction Page', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(SavingMoneysApp());

    // Tap the login button.
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle(); // Wait for the navigation to complete

    // Tap the Add Transaction button.
    await tester.tap(find.text('Add Transaction'));
    await tester.pumpAndSettle(); // Wait for the navigation to complete

    // Verify that the Add Transaction Page is displayed.
    expect(find.text('Transaction Name'), findsOneWidget);
    expect(find.text('Amount'), findsOneWidget);
    expect(find.text('Save Transaction'), findsOneWidget);
  });
}