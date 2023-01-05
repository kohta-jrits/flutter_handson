import 'package:flutter/material.dart';
import 'package:flutter_handson/fizzbuzz.dart';

@immutable
class FizzBuzzText extends StatelessWidget {
  final int number;
  final _fizzbuzz = Fizzbuzz();
  FizzBuzzText({super.key, required this.number});

  // @override
  // Widget build(BuildContext context) {
  //   return Text(
  //     _fizzbuzz.convert(number),
  //     style: Theme.of(context).textTheme.headline4,
  //   );
  // }

  
  @override
  Widget build(BuildContext context) {
    return Text(
      "HOGEHOGE",
      // result,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
