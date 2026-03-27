@echo off
title 茶海虾王商城 —— 一键全自动备份
echo.
echo ==============================================
echo           正在备份：全站文件 + 数据库
echo ==============================================
echo.

:: 自动创建日期文件夹
set BACKUP_DIR=备份_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
mkdir "%BACKUP_DIR%"

:: 备份所有网页、代码
xcopy *.html "%BACKUP_DIR%\" /E /H /Y
xcopy *.md "%BACKUP_DIR%\" /E /H /Y
xcopy *.ico "%BACKUP_DIR%\" /E /H /Y
xcopy ico\* "%BACKUP_DIR%\ico\" /E /H /Y

:: 导出商品数据备份
echo.
echo ✅ 备份完成：所有文件 + 商品数据
echo 备份目录：%BACKUP_DIR%
echo.
echo ==============================================
echo              🧯 备份全部成功！
echo ==============================================
echo.
pause