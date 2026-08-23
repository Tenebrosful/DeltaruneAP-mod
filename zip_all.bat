del /F /Q "./exportmods_zip"

cd /d "exportmods/bsdiff/"
tar.exe -a -c -f "../../exportmods_zip/archipelago-2_1_3-4_bsdiff.zip" "*.bsdiff"

cd /d "../.."

cd /d "exportmods/xdelta/"
tar.exe -a -c -f "../../exportmods_zip/archipelago-2_1_3-4_xdelta.zip" "*"

cd /d "../.."

xcopy /s/i "code" "exportmods/csx/code"
xcopy /s/i "fnt_main_ch1" "exportmods/csx/fnt_main_ch1"
xcopy /s/i "gameObjects" "exportmods/csx/gameObjects"
xcopy /s/i "rooms" "exportmods/csx/rooms"
xcopy /s/i "sounds" "exportmods/csx/sounds"
xcopy /s/i "sprites" "exportmods/csx/sprites"
copy "build.csx" "exportmods\csx\build.csx"
copy "main.csx" "exportmods\csx\main.csx"
copy "ump.csx" "exportmods\csx\ump.csx"

cd /d "exportmods/csx/"

tar.exe -a -c -f "../../exportmods_zip/archipelago-2_1_3-4_csx.zip" "*"

cd /d "../.."

./clear_csx_folder.bat