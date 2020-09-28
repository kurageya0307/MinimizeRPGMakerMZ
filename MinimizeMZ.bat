@echo off

if not exist "newdata\" (
  echo 本バッチファイルは"C:\Program Files (x86)\Steam\steamapps\common\RPG Maker MZ"の直下に置いて実行してください。
  pause
  exit
)

echo ツクールMZのコピー元ファイルを最小セットになるようカットアンドペーストします。
echo 本ツールを使用する前にnewdata内のバックアップをとってください。
echo 本ツールの使用によって発生した不具合（データが飛んだ等）に作者いかなる保証も致しません。 
set /P YES_OR_NO="バックアップをとりましたか？(Y/N)"
IF "%YES_OR_NO%" == "Y" (
  echo 実行するコマンドを入力してください。
) ELSE IF "%YES_OR_NO%"=="y" ( 
  echo 実行するコマンドを入力してください。
) ELSE (
  echo 処理を中断します。
  pause
  exit
)

echo 1：ツクールMZを最小セットにする。
echo 2：ツクールMZを元に戻す。
echo 上記以外：何もしない。 
set /P STR_INPUT="1 or 2 or その他キー"

IF "%STR_INPUT%" == "1" (
  echo "%STR_INPUT%：最小セット"
  call :label_mkdir
  call :label_move
  call :label_mini_copy
) ELSE IF "%STR_INPUT%"=="2" ( 
  echo "%STR_INPUT%：元に戻す"
  call :label_move_back
) ELSE (
  echo "%STR_INPUT%：処理中止"
)

echo 終了します。
pause
exit

rem バックアップ先のフォルダが存在しなければ作成する
:label_mkdir
if not exist "newdata_backup\" (
  mkdir newdata_backup
)
if not exist "newdata_backup\audio\" (
  mkdir newdata_backup\audio
)
if not exist "newdata_backup\audio\bgm\" (
  mkdir newdata_backup\audio\bgm
)
if not exist "newdata_backup\audio\bgs\" (
  mkdir newdata_backup\audio\bgs
)
if not exist "newdata_backup\audio\me\" (
  mkdir newdata_backup\audio\me
)
if not exist "newdata_backup\audio\se\" (
  mkdir newdata_backup\audio\se
)

if not exist "newdata_backup\css\" (
  mkdir newdata_backup\css
)

if not exist "newdata_backup\data\" (
  mkdir newdata_backup\data
)

if not exist "newdata_backup\effects\" (
  mkdir newdata_backup\effects
)
if not exist "newdata_backup\effects\Texture" (
  mkdir newdata_backup\effects\Texture
)
if not exist "newdata_backup\effects\Model" (
  mkdir newdata_backup\effects\Model
)

if not exist "newdata_backup\fonts\" (
  mkdir newdata_backup\fonts
)

if not exist "newdata_backup\img" (
  mkdir newdata_backup\img
)
if not exist "newdata_backup\img\battlebacks1\" (
  mkdir newdata_backup\img\battlebacks1
)
if not exist "newdata_backup\img\battlebacks2\" (
  mkdir newdata_backup\img\battlebacks2
)
if not exist "newdata_backup\img\characters\" (
  mkdir newdata_backup\img\characters
)
if not exist "newdata_backup\img\enemies\" (
  mkdir newdata_backup\img\enemies
)
if not exist "newdata_backup\img\faces\" (
  mkdir newdata_backup\img\faces
)
if not exist "newdata_backup\img\parallaxes\" (
  mkdir newdata_backup\img\parallaxes
)
if not exist "newdata_backup\img\pictures\" (
  mkdir newdata_backup\img\pictures
)
if not exist "newdata_backup\img\sv_actors\" (
  mkdir newdata_backup\img\sv_actors
)
if not exist "newdata_backup\img\sv_enemies\" (
  mkdir newdata_backup\img\sv_enemies
)
if not exist "newdata_backup\img\system\" (
  mkdir newdata_backup\img\system
)
if not exist "newdata_backup\img\tilesets\" (
  mkdir newdata_backup\img\tilesets
)
if not exist "newdata_backup\img\titles1\" (
  mkdir newdata_backup\img\titles1
)
if not exist "newdata_backup\img\titles2\" (
  mkdir newdata_backup\img\titles2
)

if not exist "newdata_backup\js" (
  mkdir newdata_backup\js
)

exit /b


rem バックアップ先にカットアンドペーストする
:label_move
move newdata\audio\bgm\*        newdata_backup\audio\bgm\
move newdata\audio\bgs\*        newdata_backup\audio\bgs\
move newdata\audio\me\*         newdata_backup\audio\me\
move newdata\audio\se\*         newdata_backup\audio\se\

move newdata\effects\*          newdata_backup\effects\
move newdata\effects\Texture\*  newdata_backup\effects\Texture
move newdata\effects\Model\*    newdata_backup\effects\Model

move newdata\data\*             newdata_backup\data\

move newdata\img\battlebacks1\* newdata_backup\img\battlebacks1\
move newdata\img\battlebacks2\* newdata_backup\img\battlebacks2\
move newdata\img\characters\*   newdata_backup\img\characters\
move newdata\img\faces\*        newdata_backup\img\faces\
move newdata\img\sv_actors\*    newdata_backup\img\sv_actors\
move newdata\img\titles1\*      newdata_backup\img\titles1\
move newdata\img\sv_enemies\*   newdata_backup\img\sv_enemies\
move newdata\img\titles2\*      newdata_backup\img\titles2\

exit /b

rem 最小セットのみコピーして戻す。
:label_mini_copy
copy newdata_backup\audio\bgm\Battle1.ogg newdata\audio\bgm\
copy newdata_backup\audio\bgm\Ship1.ogg   newdata\audio\bgm\
copy newdata_backup\audio\bgm\Ship2.ogg   newdata\audio\bgm\
copy newdata_backup\audio\bgm\Ship3.ogg   newdata\audio\bgm\
copy newdata_backup\audio\bgm\Theme4.ogg  newdata\audio\bgm\

copy newdata_backup\audio\bgs\City.ogg  newdata\audio\bgs\

copy newdata_backup\audio\me\Defeat1.ogg   newdata\audio\me\
copy newdata_backup\audio\me\Gameover1.ogg newdata\audio\me\
copy newdata_backup\audio\me\Victory1.ogg  newdata\audio\me\

copy newdata_backup\audio\se\Attack3.ogg    newdata\audio\se\
copy newdata_backup\audio\se\Battle1.ogg    newdata\audio\se\
copy newdata_backup\audio\se\Blow1.ogg      newdata\audio\se\
copy newdata_backup\audio\se\Buzzer1.ogg    newdata\audio\se\
copy newdata_backup\audio\se\Cancel2.ogg    newdata\audio\se\
copy newdata_backup\audio\se\Chest1.ogg     newdata\audio\se\
copy newdata_backup\audio\se\Collapse1.ogg  newdata\audio\se\
copy newdata_backup\audio\se\Collapse2.ogg  newdata\audio\se\
copy newdata_backup\audio\se\Collapse3.ogg  newdata\audio\se\
copy newdata_backup\audio\se\Collapse4.ogg  newdata\audio\se\
copy newdata_backup\audio\se\Cursor3.ogg    newdata\audio\se\
copy newdata_backup\audio\se\Damage4.ogg    newdata\audio\se\
copy newdata_backup\audio\se\Damage5.ogg    newdata\audio\se\
copy newdata_backup\audio\se\Decision2.ogg  newdata\audio\se\
copy newdata_backup\audio\se\Equip1.ogg     newdata\audio\se\
copy newdata_backup\audio\se\Evasion1.ogg   newdata\audio\se\
copy newdata_backup\audio\se\Evasion2.ogg   newdata\audio\se\
copy newdata_backup\audio\se\Item3.ogg      newdata\audio\se\
copy newdata_backup\audio\se\Load2.ogg      newdata\audio\se\
copy newdata_backup\audio\se\Miss.ogg       newdata\audio\se\
copy newdata_backup\audio\se\Recovery.ogg   newdata\audio\se\
copy newdata_backup\audio\se\Reflection.ogg newdata\audio\se\
copy newdata_backup\audio\se\Run.ogg        newdata\audio\se\
copy newdata_backup\audio\se\Save2.ogg      newdata\audio\se\
copy newdata_backup\audio\se\Shop1.ogg      newdata\audio\se\


copy newdata_backup\data\*                  newdata\data\
rem Animations.jsonのみ内容を変更する
del  newdata\data\Animations.json
echo [ > newdata\data\Animations.json
echo null, >> newdata\data\Animations.json
echo {"id":1,"displayType":0,"effectName":"HitPhysical","flashTimings":[{"frame":0,"duration":30,"color":[255,255,255,255]}],"name":"打撃/物理","offsetX":0,"offsetY":0,"rotation":{"x":0,"y":0,"z":0},"scale":50,"soundTimings":[{"frame":0,"se":{"name":"Blow1","pan":0,"pitch":100,"volume":90}}],"speed":100}  >> newdata\data\Animations.json
echo ] >> newdata\data\Animations.json


copy newdata_backup\effects\HitPhysical.efkefc      newdata\effects\
copy newdata_backup\effects\Texture\Particle100.png newdata\effects\Texture\

copy newdata_backup\img\battlebacks1\Grassland.png newdata\img\battlebacks1\

copy newdata_backup\img\battlebacks2\Grassland.png newdata\img\battlebacks2\

copy newdata_backup\img\characters\Actor1.png  newdata\img\characters\
copy newdata_backup\img\characters\Vehicle.png newdata\img\characters\

copy newdata_backup\img\faces\Actor1.png  newdata\img\faces\

copy newdata_backup\img\sv_actors\Actor1_1.png      newdata\img\sv_actors\
copy newdata_backup\img\sv_actors\Actor1_2.png      newdata\img\sv_actors\
copy newdata_backup\img\sv_actors\Actor1_3.png      newdata\img\sv_actors\
copy newdata_backup\img\sv_actors\Actor1_4.png      newdata\img\sv_actors\
copy newdata_backup\img\sv_actors\Actor1_5.png      newdata\img\sv_actors\
copy newdata_backup\img\sv_actors\Actor1_6.png      newdata\img\sv_actors\
copy newdata_backup\img\sv_actors\Actor1_7.png      newdata\img\sv_actors\
copy newdata_backup\img\sv_actors\Actor1_8.png      newdata\img\sv_actors\

copy newdata_backup\img\titles1\Ruins.png newdata\img\titles1\


exit /b

rem バックアップを元に戻す。
:label_move_back
move newdata_backup\audio\bgm\*        newdata\audio\bgm\
move newdata_backup\audio\bgs\*        newdata\audio\bgs\
move newdata_backup\audio\me\*         newdata\audio\me\
move newdata_backup\audio\se\*         newdata\audio\se\

move newdata_backup\effects\*          newdata\effects\
move newdata_backup\effects\Texture\*  newdata\effects\Texture
move newdata_backup\effects\Model\*    newdata\effects\Model

move newdata_backup\data\*             newdata\data\

move newdata_backup\img\battlebacks1\* newdata\img\battlebacks1\
move newdata_backup\img\battlebacks2\* newdata\img\battlebacks2\
move newdata_backup\img\characters\*   newdata\img\characters\
move newdata_backup\img\faces\*        newdata\img\faces\
move newdata_backup\img\sv_actors\*    newdata\img\sv_actors\
move newdata_backup\img\titles1\*      newdata\img\titles1\
move newdata_backup\img\sv_enemies\*   newdata\img\sv_enemies\
move newdata_backup\img\titles2\*      newdata\img\titles2\

exit /b
