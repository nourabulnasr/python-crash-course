@echo off
echo 🐍 Python Crash Course - Deployment Helper
echo ==========================================
echo.

echo 📁 Checking if Git is installed...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git is not installed. Please install Git first:
    echo    https://git-scm.com/downloads
    pause
    exit /b 1
)

echo ✅ Git is installed
echo.

echo 🔧 Initializing Git repository...
if not exist .git (
    git init
    echo ✅ Git repository initialized
) else (
    echo ✅ Git repository already exists
)

echo.
echo 📝 Adding files to Git...
git add .
git commit -m "Update Python Crash Course"

echo.
echo 🌐 To deploy to GitHub Pages:
echo    1. Create a repository at https://github.com/new
echo    2. Name it: python-crash-course
echo    3. Run these commands:
echo.
echo    git remote add origin https://github.com/YOUR_USERNAME/python-crash-course.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo    4. Go to Settings → Pages → Source: Deploy from branch
echo    5. Your app will be live at: https://YOUR_USERNAME.github.io/python-crash-course/
echo.



pause
