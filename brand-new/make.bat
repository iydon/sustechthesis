@echo off
chcp 65001 >nul

set filename="main"
set temp="temp"

if "%1"=="clean" (
    call:clean
) else (
    if "%1"=="show" (
        call:show
    ) else (
        call:compile
    )
)
goto:eof


rem Function

:compile
    if exist %temp%/%filename%.bbl (
        call:pop
        call:twice
    ) else (
        xelatex %filename%
        bibtex  %filename%
        call:twice
    )
    call:mvto
goto:eof

:clean
    del /q %temp%
    rmdir %temp%
goto:eof

:mvto
    if not exist %temp% mkdir %temp%
    move %filename%.aux temp >nul 2>nul
    move %filename%.bbl temp >nul 2>nul
    move %filename%.blg temp >nul 2>nul
    move %filename%.log temp >nul 2>nul
    move %filename%.out temp >nul 2>nul
    move %filename%.toc temp >nul 2>nul
goto:eof

:pop
    move %temp%\* ./
goto:eof

:twice
    xelatex %filename%
    xelatex %filename%
goto:eof

:show
    %filename%.pdf
goto:eof
