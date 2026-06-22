UndertaleModCli.exe load DELTARUNE\data_vanilla.win -s build.csx -o DELTARUNE\data.win
UndertaleModCli.exe load DELTARUNE\chapter1_windows\data_vanilla.win -s build.csx -o DELTARUNE\chapter1_windows\data.win
UndertaleModCli.exe load DELTARUNE\chapter2_windows\data_vanilla.win -s build.csx -o DELTARUNE\chapter2_windows\data.win
UndertaleModCli.exe load DELTARUNE\chapter3_windows\data_vanilla.win -s build.csx -o DELTARUNE\chapter3_windows\data.win
UndertaleModCli.exe load DELTARUNE\chapter4_windows\data_vanilla.win -s build.csx -o DELTARUNE\chapter4_windows\data.win

py -3.12 generate_bsdiff.py