del /F /Q ".\DELTARUNE\data.win"
del /F /Q ".\DELTARUNE\chapter1_windows\data.win"
del /F /Q ".\DELTARUNE\chapter2_windows\data.win"
del /F /Q ".\DELTARUNE\chapter3_windows\data.win"
del /F /Q ".\DELTARUNE\chapter4_windows\data.win"
del /F /Q ".\DELTARUNE\chapter5_windows\data.win"

call generate_data.bat
call generate_vcdiff.bat
call generate_bsdiff.bat
call zip_all.bat