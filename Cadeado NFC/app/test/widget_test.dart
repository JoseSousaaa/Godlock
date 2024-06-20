import 'package:flutter_test/flutter_test.dart';
import 'package:your_app/main.dart';

void main() {
  testWidgets('Navigate to CreateAccountPage', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Verifica se a LoginPage está sendo exibida inicialmente
    expect(find.text('Login Page'), findsOneWidget);

    // Encontra e pressiona o botão "Sign Up"
    await tester.tap(find.text('Sign Up'));
    await tester.pumpAndSettle();

    // Verifica se a CreateAccountPage é carregada após pressionar o botão "Sign Up"
    expect(find.text('Create Account Page'), findsOneWidget);
  });
}
