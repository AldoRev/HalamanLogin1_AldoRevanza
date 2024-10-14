import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:halaman_login/main.dart';

void main() {
  testWidgets('App should display the login screen', (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget(MyApp());

    // Check if the "LOGIN" button is present
    expect(find.text('LOGIN'), findsOneWidget);

    // Check if email and password input fields are present
    expect(find.byType(TextField), findsNWidgets(2));

    // Check if the "Forgot Password?" text is present
    expect(find.text('Forgot Password?'), findsOneWidget);
  });
}
