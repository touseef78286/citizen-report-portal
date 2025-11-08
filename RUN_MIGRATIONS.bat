@echo off
echo Running Database Migrations...
echo.
cd server
npm run migrate
echo.
echo Migrations completed!
pause

