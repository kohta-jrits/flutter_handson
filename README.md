# flutter_handson

## フォルダ構成

- android/, ios/. linux/, macos/, web/, windows/: 各native固有のコード.
    - AndroidManifest.xml 等がここにあります.
- lib/: 共通のアプリコード. ここに書きます.
- test/: lib/ に対するテストコード.

## ファイル

 - pubspec.yaml: アプリバージョンや依存関係などを記述



## とりま実行

```bash
#(Windowsの場合)
$ flutter run
Multiple devices found:
Windows (desktop) • windows • windows-x64    • Microsoft Windows
Chrome (web)      • chrome  • web-javascript • Google Chrome
Edge (web)        • edge    • web-javascript • Microsoft Edge
[1]: Windows (windows)
[2]: Chrome (chrome)
[3]: Edge (edge)
Please choose one (To quit, press "q/Q"): 2
Launching lib\main.dart on Chrome in debug mode...
Waiting for connection from debug service on Chrome...　#=> Chdomeで開く
```
