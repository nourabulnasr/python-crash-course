@echo off
echo 🚀 Python Crash Course - Website Update Helper
echo ===============================================
echo.

echo 📁 Checking Git status...
git status

echo.
echo 📝 Adding all changes...
git add .

echo.
echo 💬 Enter your commit message:
set /p commit_msg="Update message: "

echo.
echo 🔄 Committing changes...
git commit -m "%commit_msg%"

echo.
echo 🌐 Pushing to GitHub...
git push origin main

echo.
echo ✅ Update complete! Your website will refresh in 1-2 minutes.
echo 🌐 Check: https://nourabulnasr.github.io/python-crash-course/
echo.
pause

