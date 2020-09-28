# MinimizeRPGMakerMV
RPGツクールMZの音楽・画像・effekseerファイルを最小セットに変更するWindowsバッチファイルです。

# 概要
RPGツクールMZにて「ファイル→プロジェクトの新規作成」を選ぶと，
コピー元となるCドライブのフォルダから
大量のデータがコピーされます。
Steam版の場合
C:\Program Files (x86)\Steam\steamapps\common\RPG Maker MZ\newdata
KADOKAWA版の場合（__KADOKAWA版を購入していないので推測です！__）
C:\Program Files (x86)KADOKAWA\RPGMZ\newdata

これがわりとデータ容量を食っていたので
コピー元を必要最小限に変更するようなバッチファイルを作成しました。

やっていることは単にカットアンドペーストなので
大したものじゃありません。
ご自由にご利用ください。

# 使い方
## 最小化の方法
1.　CドライブのRPGツクールMZのフォルダ直下に[MinimizeRPGMakerMZ.bat](https://raw.githubusercontent.com/kurageya0307/MinimizeRPGMakerMZ/master/MinimizeMZ.bat)を置いてください。
（フォルダの例，C:\Program Files (x86)\Steam\steamapps\common\RPG Maker MZ\newdata）

__2.　【重要】フォルダ「newdata」をバックアップしてください。__

3.　バッチファイルをダブルクリックして実行してください。

4.　バックアップしたかどうか尋ねてくるので，キーボードの「y」を入力してエンターキーを押してください。

5.　キーボードの「1」を入力してエンターキーを押してください。
　　カットアンドペーストを開始します。
  
6.　処理の終了後，エンターキーを押して終了してください。

## 元に戻す方法
4.までは最小化の方法と同じです。

5.でキーボードの「2」を入力してエンターキーを押せば，
「newdata_backup」のフォルダから「newdata」へデータを元に戻します。
