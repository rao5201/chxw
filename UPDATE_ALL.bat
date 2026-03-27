@echo off
title 茶海虾王商城 —— 全自动一键更新系统
echo.
echo ==============================================
echo          正在执行：全站代码自动更新
echo ==============================================
echo.
echo 🔽 正在拉取最新代码...
git pull origin main
echo.
echo 🔼 正在提交所有更新...
git add .
git commit -m "系统全自动更新：商城 + 后台 + 数据库 + AI功能 + 视频 + 分享"
echo.
echo 🚀 正在推送至 GitHub 线上服务器...
git push origin main
echo.
echo ==============================================
echo              ✅ 更新全部完成！
echo.
echo 🌐 前端商城：https://rao5201.github.io/chxw/
echo 🛒 商家后台：https://rao5201.github.io/chxw/admin.html
echo.
echo        🤖 AI系统、商品、视频、数据库已同步
echo ==============================================
echo.
pause