#!/bin/bash

# BlockLearn Installation Script
echo "🚀 Installing BlockLearn - Collaborative Study Planner"
echo "======================================================"

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js v14 or higher."
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 14 ]; then
    echo "❌ Node.js version 14 or higher is required. Current version: $(node -v)"
    exit 1
fi

echo "✅ Node.js $(node -v) detected"

# Install Backend Dependencies
echo "📦 Installing backend dependencies..."
cd blocklearn-backend
npm install
if [ $? -eq 0 ]; then
    echo "✅ Backend dependencies installed successfully"
else
    echo "❌ Failed to install backend dependencies"
    exit 1
fi

# Install Frontend Dependencies
echo "📦 Installing frontend dependencies..."
cd ../blocklearn-frontend
npm install
if [ $? -eq 0 ]; then
    echo "✅ Frontend dependencies installed successfully"
else
    echo "❌ Failed to install frontend dependencies"
    exit 1
fi

# Create environment files
echo "⚙️  Setting up environment files..."

# Backend .env
if [ ! -f "../blocklearn-backend/.env" ]; then
    cp ../blocklearn-backend/.env.example ../blocklearn-backend/.env
    echo "✅ Created backend .env file"
    echo "⚠️  Please edit blocklearn-backend/.env with your configuration"
else
    echo "✅ Backend .env file already exists"
fi

# Frontend .env
if [ ! -f ".env" ]; then
    cp .env.example .env
    echo "✅ Created frontend .env file"
    echo "⚠️  Please edit blocklearn-frontend/.env with your configuration"
else
    echo "✅ Frontend .env file already exists"
fi

cd ..

echo ""
echo "🎉 Installation completed successfully!"
echo "======================================================"
echo ""
echo "Next steps:"
echo "1. Configure your environment variables:"
echo "   - Edit blocklearn-backend/.env"
echo "   - Edit blocklearn-frontend/.env"
echo ""
echo "2. Start the backend server:"
echo "   cd blocklearn-backend && npm start"
echo ""
echo "3. Start the frontend (in a new terminal):"
echo "   cd blocklearn-frontend && npm start"
echo ""
echo "4. Open http://localhost:3000 in your browser"
echo ""
echo "For detailed setup instructions, see the README.md file"
echo "======================================================"
