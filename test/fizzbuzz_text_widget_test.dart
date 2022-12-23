import 'package:flutter/material.dart';
import 'package:flutter_handson/fizzbuzz_text.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('数を渡す数を表示する', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: FizzBuzzText(
          number: 1,
        ),
      ),
    );

    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('3の倍数を渡すとFizzを表示する', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: FizzBuzzText(
          number: 3,
        ),
      ),
    );

    expect(find.text('Fizz'), findsOneWidget);
  });

  testWidgets('5の倍数を渡すとBuzzを表示する', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: FizzBuzzText(
          number: 5,
        ),
      ),
    );

    expect(find.text('Buzz'), findsOneWidget);
  });

  testWidgets('15の倍数を渡すとFizzBuzzを表示する', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: FizzBuzzText(
          number: 15,
        ),
      ),
    );

    expect(find.text('FizzBuzz'), findsOneWidget);
  });
}
