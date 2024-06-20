import 'package:flutter_test/flutter_test.dart'
    show WidgetTester, expect, find, findsOneWidget, testWidgets;
import 'package:godlock_login/main.dart' show MyApp;
// ignore: prefer_single_quotes
import 'package:cadeado_nfc/app/lib/main.dart';

void main() {
  testWidgets('Navigate to CreateAccountPage', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verifica se a LoginPage está sendo exibida inicialmente
    expect(find.text('Login Page'), findsOneWidget);

    // Encontra e pressiona o botão "Sign Up"
    await tester.tap(find.text('Sign Up'));
    await tester.pumpAndSettle();

    // Verifica se a CreateAccountPage é carregada após pressionar o botão "Sign Up"
    expect(find.text('Create Account Page'), findsOneWidget);
  });
}
