// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_demo/mock/subaccounts.dart';
import 'package:flutter_demo/screens/detail_screen.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_demo/main.dart';

void main() {
  testWidgets('Should find text', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    var subAccount = SubAccount(
        'Testando',
        Icon(Icons.ac_unit),
        Colors.redAccent,
        "R\$1,00"
    );
    await tester.pumpWidget(
        MaterialApp(
          home: SubAccountDetailPage(subAccount: subAccount, heroTag: "123"),
        )
    );
    expect(find.text('Testando'), findsOneWidget);
    expect(find.text('Not found'), findsNothing);

    // Teste de acessibilidade
    tester.binding.platformDispatcher.textScaleFactorTestValue = 5;
    await tester.pump();
    expect(find.text('Testando'), findsOneWidget);
  });
}
