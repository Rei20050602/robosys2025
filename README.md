# dowコマンド
![test](https://github.com/ReiKawahigashi/robosys2025/actions/workflows/test.yml/badge.svg)

## 目次
1[コマンドについて]\
2[使い方]\
3[環境]\
4[ライセンス]

## コマンドについて
2026年の日付に対する曜日を確認できるコマンド

## 使い方
### 1.リポジトリをコピー
```
$ git clone https://github.com/ReiKawahigashi/robosys2025
$ cd robosys2025
```

### 2.コマンドを実行\
monthに月、dayに日付を入力
```
& echo "month day" | ./dow
```

### 3.コマンド実行例
```
$ echo "6 2" | ./dow
Tue.
```
```
echo "13 32" | ./dow
```
存在しない日付だと何も表示されない

## 環境
Ubuntu 24.04.1 LTS

## ライセンス
本コマンドは三条項BSDライセンスの下にて、使用および複製が許可されています。
