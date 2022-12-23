# Dartの概要
Dartの基本的な構文を紹介します。
さらに学習したい場合は公式ドキュメントから、Language samplesやLanguage tour、API Referenceを参照してください。
https://dart.dev/guides

また、Java開発者の場合は以下のチュートリアルを実施することで、Javaの相違を確認しながら効率的に学ぶことができます。
https://developers.google.com/codelabs/from-java-to-dart#0

## 基本構文
### 型
変数の宣言は`型 変数名 = 初期値;`の形で記述します。
```dart
String name = "Alice";
```

変数をprivateする場合は、変数名の前に`_`を記述します。
```dart
String _name = "Bob";
```

`var`を用いて型を省略することも可能です。（型推論）
``` dart
var count = 0;
```

値を変更したくない場合には`final`、定数として定義する場合には`const`を用います。どちらも型は省略可能です。
```dart
// 値が代入された後は変更できない
final message;
message = 'Hello World!';

// コンパイル時に値が代入され、それ以降は変更できない
const defaultTimeout  = 1000;
```


### if文、for文、関数
Dartではif文、for文、関数を以下のように記述します。
``` dart
/// メイン関数 1から100までの数字のうち偶数のみ標準出力に表示する
void main() {

  // 1から100まで加算を繰り返すfor文
  for (int i = 1; i <= 100; i++) {
    // 偶数化を判定するif文
    if (isEvenNumber(i)) {
      print(i);
    }
  }

}

/// 偶数かどうかを返却する関数
bool isEvenNumber(int number) {
  return number % 2 == 0;
}

```

## Dartの機能
### Null Safety
Null Safetyとは、Nullが設定された変数に意図せずアクセスすることで発生するエラーを防ぐ機能です。
DartではNull許容型、非Null許容型が明確に区別されています。

以下のような変数はデフォルトで非Null許容型です。
```dart
// 非Null許容
var i = 42;
String name = getFileName();
final b = Foo();
```
以下のように型の後ろに`?`を記述することでNull許容型にすることができます。
```dart
// Null許容
int? i = null;
```

非Null許容型の変数にNull許容型の変数を代入する場合は、代入処理の前にNullチェックを行う必要があります。
```dart
/// Nullを返す可能性がある関数
String? getFileName() {
  // 省略
}

void main() {
  String fileName = ""; // 非Null許容型

  final result = getFileName(); // Nullの可能性がある

  if (result != null) {
    fileName = result;
  }

  // 省略
}
```

### async/awaitによる非同期処理
Dartでは非同期処理をasync/awaitで簡潔に記述することができます。
非同期にしたい関数には`async`を記述し、非同期処理を待つ場合には関数呼び出しの前に`await`を記述します。
また、`await`する際に戻り値を渡したい場合は非同期関数の戻り値型を`Future<型>`とすることで値を返却することができます。
以下は、郵便番号から住所を取得する非同期関数とその呼び出しの例です。

``` dart
import 'dart:convert';
import 'package:http/http.dart' as http;

/// 郵便番号から住所を取得する
Future<String> getAddress(String zipcode) async {
  final url = Uri.parse('https://zipcloud.ibsnet.co.jp/api/search?zipcode=$zipcode');
  var response = await http.get(url);

  var address = json.decode(response.body)['results'][0];

  return address['address1'] + address['address2'] + address['address3'];
}

void main() async {
  final address = await getAddress('2240035');
  print(address); // 神奈川県横浜市都筑区新栄町が出力される
}
```
ちなみに非同期関数を呼び出す場合は、呼び出し元の関数も非同期関数である必要があるので注意してください。

### 拡張メソッド
拡張メソッドとは、定義されたコードを変更せずに関数を拡張する機能です。

以下はDart標準の`String`に1文字目を取得する関数を拡張している例です。
```dart
extension on String {
  /// 1文字目を返却する
  String first() {
    return this.substring(0,1);
  }
}

void main() {
  final message = 'Hello World!';
  final firstChar = message.first();
  print(firstChar); // Hが出力される
}
```

### 命名規則
Dartでは可読性を上げるために以下の命名規則を推奨しています。
Javaなどの命名規則に近いですが、定数やファイル名などに違いがあるので注意しましょう。
https://dart.dev/guides/language/effective-dart/style

* UpperCamelCase
  * クラス名
  * Enum型名
  * 拡張機能の型名

* lowerCamelCase
  * 変数
  * 定数
  * メソッド名
  * パラメータ名

* lowercase_with_underscores
  * ライブラリ名
  * パッケージ名
  * ディレクトリ名
  * ファイル名
  * インポートプレフィックス


### コメント

通常のコメント
``` dart
// This is a normal, one-line comment.
```

ドキュメントコメント
``` dart
/// This is a documentation comment, used to document libraries,
/// classes, and their members. Tools like IDEs and dartdoc treat
/// doc comments specially.
```


privateはClass、Method、変数に効いてた