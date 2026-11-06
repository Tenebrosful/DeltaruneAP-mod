@echo off
setlocal enabledelayedexpansion

:: valid parameters:
::
:: no valid parameters provided = all chapters + chapter select
:: 0 = chapter select
:: 1 = chapter 1
:: 2 = chapter 2
:: 3 = chapter 3
:: 4 = chapter 4
:: 5 = chapter 5
:: 6 = chapter 6 (currently disabled)
:: 7 = chapter 7 (currently disabled)
:: 8 = all chapters
:: 9 = all chapters + chapter select
:: 
:: they are not case sensitive, and
:: you may provide multiple parameters.

set chapter_0=0
set chapter_1=0
set chapter_2=0
set chapter_3=0
set chapter_4=0
set chapter_5=0
set chapter_6=0
set chapter_7=0
set arg_count=0

:: argument counting code from this StackOverflow answer by Aacini: https://stackoverflow.com/a/19837690
for %%x in (%*) do (
   set /a arg_count+=1
   set "arg_values[!arg_count!]=%%~x"
)

for /l %%i in (1,1,%arg_count%) do (
    if !arg_values[%%i]!==0 (
        set chapter_0=1
    )
    if !arg_values[%%i]!==1 (
        set chapter_1=1
    )
    if !arg_values[%%i]!==2 (
        set chapter_2=1
    )
    if !arg_values[%%i]!==3 (
        set chapter_3=1
    )
    if !arg_values[%%i]!==4 (
        set chapter_4=1
    )
    if !arg_values[%%i]!==5 (
        set chapter_5=1
    )
    if !arg_values[%%i]!==6 (
        set chapter_6=1
    )
    if !arg_values[%%i]!==7 (
        set chapter_7=1
    )
    if !arg_values[%%i]!==8 (
        set chapter_1=1
        set chapter_2=1
        set chapter_3=1
        set chapter_4=1
        set chapter_5=1
        set chapter_6=1
        set chapter_7=1
    )
    if !arg_values[%%i]!==9 (
        set chapter_0=1
        set chapter_1=1
        set chapter_2=1
        set chapter_3=1
        set chapter_4=1
        set chapter_5=1
        set chapter_6=1
        set chapter_7=1
    )
)

:: disable unreleased chapters
set chapter_6=0
set chapter_7=0

:: enable all chapters if no chapters are enabled
if %chapter_0%==0 if %chapter_1%==0 if %chapter_2%==0 if %chapter_3%==0 if %chapter_4%==0 if %chapter_5%==0 if %chapter_6%==0 if %chapter_7%==0 (
    set chapter_0=1
    set chapter_1=1
    set chapter_2=1
    set chapter_3=1
    set chapter_4=1
    set chapter_5=1
    set chapter_6=1
    set chapter_7=1
)

:: disable unreleased chapters again lol
set chapter_6=0
set chapter_7=0

if %chapter_0%==1 UTMT_CLI\UndertaleModCli.exe load deltarune\data_vanilla.win -s build.csx -o deltarune\data.win -f
if %chapter_1%==1 UTMT_CLI\UndertaleModCli.exe load deltarune\chapter1_windows\data_vanilla.win -s build.csx -o deltarune\chapter1_windows\data.win -f
if %chapter_2%==1 UTMT_CLI\UndertaleModCli.exe load deltarune\chapter2_windows\data_vanilla.win -s build.csx -o deltarune\chapter2_windows\data.win -f
if %chapter_3%==1 UTMT_CLI\UndertaleModCli.exe load deltarune\chapter3_windows\data_vanilla.win -s build.csx -o deltarune\chapter3_windows\data.win -f
if %chapter_4%==1 UTMT_CLI\UndertaleModCli.exe load deltarune\chapter4_windows\data_vanilla.win -s build.csx -o deltarune\chapter4_windows\data.win -f
if %chapter_5%==1 UTMT_CLI\UndertaleModCli.exe load deltarune\chapter5_windows\data_vanilla.win -s build.csx -o deltarune\chapter5_windows\data.win -f
if %chapter_6%==1 UTMT_CLI\UndertaleModCli.exe load deltarune\chapter6_windows\data_vanilla.win -s build.csx -o deltarune\chapter6_windows\data.win -f
if %chapter_7%==1 UTMT_CLI\UndertaleModCli.exe load deltarune\chapter7_windows\data_vanilla.win -s build.csx -o deltarune\chapter7_windows\data.win -f