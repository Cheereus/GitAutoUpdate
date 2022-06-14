@echo off
chcp 65001

@REM 建议是都放在同一级目录下，此处以分号分割
set rootdir=e:\
set repos=WebPortalTest;CheerNotebook;SensetimeNotes;GitAutoUpdate
set logfile=E:\GitAutoUpdate\autoUpdate.log
set message="auto update"

set remain=%repos%

:loop
for /f "tokens=1* delims=;" %%a in ("%remain%") do (
    echo %%a
    pushd %rootdir%%%a
    git add . > %logfile%
    git commit -am %message% >> %logfile%
    git push
    set remain=%%b
)

if defined remain goto :loop
echo 自动同步完成！按任意键退出！
pause
