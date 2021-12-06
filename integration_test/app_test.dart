import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:interview_task/common_widgets/custom_button.dart';
import 'package:interview_task/main.dart' as app;

void main () {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets('full app test', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      final button = find.byType(CustomButton);
      await tester.tap(button);
      await tester.pumpAndSettle();
      
      final fullNamefield = find.byType(TextFormField).first;
      final emailField = find.byType(TextFormField).at(1);
      final passwordField= find.byType(TextFormField).last;
      final signUpButton = find.byType(CustomButton);
      
      await tester.enterText(fullNamefield, 'Uzochukwu Bishop Samuel');
      await tester.enterText(emailField, 'bishopuzochukwu37@gmail.com');
      await tester.enterText(passwordField, '123456');
      await tester.pumpAndSettle();
      await tester.tap(signUpButton);
      await tester.pumpAndSettle();

      await tester.pumpAndSettle();


    });
  });
}