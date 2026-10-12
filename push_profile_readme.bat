@echo off
title Push Profile README to GitHub
color 0b

echo ========================================================
echo       Push Professional Profile README to GitHub
echo ========================================================
echo.
echo Please make sure you created a repository named:
echo    mahinaveen221-boop
echo on https://github.com/new first!
echo (It must be Public and have the exact same name as your username)
echo.
pause

git branch -M main
git remote remove origin 2>nul
git remote add origin https://github.com/mahinaveen221-boop/mahinaveen221-boop.git

echo.
echo Pushing README to GitHub...
git push -u origin main --force

if %errorlevel% equ 0 (
    echo.
    echo ========================================================
    echo SUCCESS! Your GitHub profile is now PRO!
    echo Visit your profile: https://github.com/mahinaveen221-boop
    echo ========================================================
) else (
    echo.
    echo Error during push! Make sure 'mahinaveen221-boop' repo exists on GitHub.
)

echo.
pause
