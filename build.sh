UndertaleModCli load DELTARUNE/data_vanilla.win -s build.csx -o DELTARUNE/data.win
UndertaleModCli load DELTARUNE/chapter1_windows/data_vanilla.win -s build.csx -o DELTARUNE/chapter1_windows/data.win
UndertaleModCli load DELTARUNE/chapter2_windows/data_vanilla.win -s build.csx -o DELTARUNE/chapter2_windows/data.win
UndertaleModCli load DELTARUNE/chapter3_windows/data_vanilla.win -s build.csx -o DELTARUNE/chapter3_windows/data.win
UndertaleModCli load DELTARUNE/chapter4_windows/data_vanilla.win -s build.csx -o DELTARUNE/chapter4_windows/data.win

python3.12 generate_bsdiff.py
