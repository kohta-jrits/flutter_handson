import 'package:flutter_handson/fizzbuzz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var fizzbuzz;

  setUp(() {
    fizzbuzz = Fizzbuzz();
  });

  test('1を渡すと文字列"1"を返す', () {
    expect(fizzbuzz.convert(1), "1");
  });

  test('2を渡すと文字列"2"を返す', () {
    expect(fizzbuzz.convert(2), "2");
  });

  test('3を渡すと文字列"Fizz"を返す', () {
    expect(fizzbuzz.convert(3), "Fizz");
  });

  test('5を渡すと文字列"Buzz"を返す', () {
    expect(fizzbuzz.convert(5), "Buzz");
  });

  test('15を渡すと文字列"FizzBuzz"を返す', () {
    expect(fizzbuzz.convert(15), "FizzBuzz");
  });
}


/**
 TODO
 [ ] 数を文字列に変換する
     [x]  1を渡すと文字列"1"を返す
     [x]  2を渡すと文字列"2"を返す
     [x]  3を渡すと文字列"Fizz"を返す
     ３の倍数の時は Fizzに変換する
    ５の倍数の時は Buzzに変換する
    ３と５両方の時は FizzBuzzに変換する
 １～Nまでの数を変換する
 表示する

　---
1. 次の目標を考える
仕様を整理
小さく分解
言い回しをそろえたり、言い換えたりして表現をそろえる
TODOリストとして書き出していく
優先度順に並べ、どの順でやるか戦略を立てる。

2.テストを書く
3.そのテストを実行して失敗させる (Red)
4.目的のコードを書く
5.書いたテストを成功させる (Green)
6.テストが通るままでリファクタリングを行う (Refactor)
 */
