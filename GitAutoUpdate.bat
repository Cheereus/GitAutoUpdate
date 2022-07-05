timeout /nobreak /t 30
@echo off
chcp 65001

@REM 建议是都放在同一级目录下，此处以分号分割
set rootdir=e:\
set repos=WebPortalTest;GitAutoUpdate;CheerNotebook
set logfile=E:\GitAutoUpdate\autoUpdate.log
set message="auto update"

set remain=%repos%

echo --------------------------------------------------- >> %logfile%
date /t >> %logfile%
time /t >> %logfile%

:loop
for /f "tokens=1* delims=;" %%a in ("%remain%") do (
    echo %%a
    echo -----------------%%a----------------- >> %logfile%
    pushd %rootdir%%%a
    git add . >> %logfile%
    git commit -am %message% >> %logfile%
    git push
    set remain=%%b
)

if defined remain goto :loop
echo 自动同步完成！按任意键退出！
@REM pause
