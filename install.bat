@echo off
REM BlockLearn Installation Script for Windows
echo 🚀 Installing BlockLearn - Collaborative Study Planner
echo ======================================================

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed. Please install Node.js v14 or higher.
    pause
    exit /b 1
)

echo ✅ Node.js detected
node --version

REM Install Backend Dependencies
echo 📦 Installing backend dependencies...
cd blocklearn-backend
call npm install
if %errorlevel% neq 0 (
    echo ❌ Failed to install backend dependencies
    pause
    exit /b 1
)
echo ✅ Backend dependencies installed successfully

REM Install Frontend Dependencies
echo 📦 Installing frontend dependencies...
cd ..\blocklearn-frontend
call npm install
if %errorlevel% neq 0 (
    echo ❌ Failed to install frontend dependencies
    pause
    exit /b 1
)
echo ✅ Frontend dependencies installed successfully

REM Create environment files
echo ⚙️  Setting up environment files...

REM Backend .env
if not exist "..\blocklearn-backend\.env" (
    copy "..\blocklearn-backend\.env.example" "..\blocklearn-backend\.env"
    echo ✅ Created backend .env file
    echo ⚠️  Please edit blocklearn-backend\.env with your configuration
) else (
    echo ✅ Backend .env file already exists
)

REM Frontend .env
if not exist ".env" (
    copy ".env.example" ".env"
    echo ✅ Created frontend .env file
    echo ⚠️  Please edit blocklearn-frontend\.env with your configuration
) else (
    echo ✅ Frontend .env file already exists
)

cd ..

echo.
echo 🎉 Installation completed successfully!
echo ======================================================
echo.
echo Next steps:
echo 1. Configure your environment variables:
echo    - Edit blocklearn-backend\.env
echo    - Edit blocklearn-frontend\.env
echo.
echo 2. Start the backend server:
echo    cd blocklearn-backend ^&^& npm start
echo.
echo 3. Start the frontend (in a new terminal):
echo    cd blocklearn-frontend ^&^& npm start
echo.
echo 4. Open http://localhost:3000 in your browser
echo.
echo For detailed setup instructions, see the README.md file
echo ======================================================
pause
