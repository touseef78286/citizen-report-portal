@echo off
echo ========================================
echo   GitHub Push Script
echo ========================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Git is not installed!
    echo.
    echo Please install Git first:
    echo 1. Download from: https://git-scm.com/download/win
    echo 2. Install Git
    echo 3. Restart this script
    echo.
    pause
    exit /b 1
)

echo [INFO] Git is installed!
echo.

REM Navigate to project directory
cd /d "%~dp0"
echo [INFO] Current directory: %CD%
echo.

REM Check if .git exists
if not exist ".git" (
    echo [INFO] Initializing Git repository...
    git init
    echo [OK] Git repository initialized
    echo.
)

REM Check if files are staged
git status --porcelain >nul 2>&1
if errorlevel 1 (
    echo [INFO] No changes to commit
) else (
    echo [INFO] Staging all files...
    git add .
    echo [OK] Files staged
    echo.
)

REM Check if there are commits
git log --oneline -1 >nul 2>&1
if errorlevel 1 (
    echo [INFO] Creating initial commit...
    git commit -m "Initial commit - Citizen Report Portal"
    echo [OK] Initial commit created
    echo.
) else (
    echo [INFO] Creating commit...
    git commit -m "Update: Citizen Report Portal"
    echo [OK] Commit created
    echo.
)

REM Set main branch
git branch -M main >nul 2>&1

REM Check if remote exists
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    echo [INPUT] Please enter your GitHub repository URL:
    echo Example: https://github.com/username/citizen-report-portal.git
    echo.
    set /p REPO_URL="Repository URL: "
    
    if "%REPO_URL%"=="" (
        echo [ERROR] Repository URL is required!
        pause
        exit /b 1
    )
    
    echo.
    echo [INFO] Adding remote repository...
    git remote add origin "%REPO_URL%"
    echo [OK] Remote added
    echo.
)

REM Push to GitHub
echo [INFO] Pushing to GitHub...
echo.
git push -u origin main

if errorlevel 1 (
    echo.
    echo [ERROR] Push failed!
    echo.
    echo Possible reasons:
    echo 1. GitHub credentials not configured
    echo 2. Repository doesn't exist on GitHub
    echo 3. Network issue
    echo.
    echo Solutions:
    echo 1. Create repository on GitHub first
    echo 2. Use Personal Access Token for authentication
    echo 3. Check your internet connection
    echo.
    pause
    exit /b 1
) else (
    echo.
    echo [SUCCESS] Code pushed to GitHub successfully!
    echo.
    echo Next steps:
    echo 1. Go to your GitHub repository
    echo 2. Verify all files are uploaded
    echo 3. Check that .env files are NOT visible
    echo 4. Ready for deployment!
    echo.
)

pause

