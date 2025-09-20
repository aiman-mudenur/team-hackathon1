# BlockLearn - Collaborative Study Planner

A comprehensive full-stack application for collaborative study planning with AI, blockchain, and security features.

## 🚀 Project Overview

BlockLearn is a modern study planning platform that combines:
- **AI-Powered Reminders**: Intelligent study suggestions using OpenAI GPT-4
- **Blockchain Integration**: Permanent session logging on Ethereum
- **Real-Time Collaboration**: Shared timetables and study sessions
- **Security Features**: Multi-factor authentication and data encryption
- **Modern UI**: Responsive design with dark mode support

## 📁 Project Structure

```
blocklearn/
├── blocklearn-frontend/     # React.js frontend application
│   ├── src/
│   │   ├── components/      # Reusable UI components
│   │   ├── pages/          # Main application pages
│   │   ├── context/        # State management
│   │   └── theme/          # UI theme configuration
│   ├── public/             # Static assets
│   └── package.json        # Frontend dependencies
├── blocklearn-backend/      # Node.js backend server
│   ├── index.js            # Main server file
│   ├── BlockLearnSessionABI.json # Smart contract ABI
│   └── package.json        # Backend dependencies
└── README.md               # This file
```

## 🛠️ Quick Start

### Prerequisites

- Node.js (v14 or higher)
- npm or yarn
- MetaMask browser extension
- Ethereum testnet account (Goerli)
- OpenAI API key
- Firebase project (optional)

### 1. Clone the Repository

```bash
git clone <repository-url>
cd blocklearn
```

### 2. Backend Setup

```bash
cd blocklearn-backend
npm install
cp .env.example .env
# Edit .env with your configuration
npm start
```

### 3. Frontend Setup

```bash
cd blocklearn-frontend
npm install
cp .env.example .env
# Edit .env with your configuration
npm start
```

### 4. Access the Application

- Frontend: http://localhost:3000
- Backend API: http://localhost:5000

## 🔧 Configuration

### Backend Environment Variables

Create `blocklearn-backend/.env`:

```env
PORT=5000
NODE_ENV=development
INFURA_URL=https://goerli.infura.io/v3/YOUR_INFURA_PROJECT_ID
CONTRACT_ADDRESS=0x1234567890123456789012345678901234567890
PRIVATE_KEY=your_private_key_here
OPENAI_API_KEY=your_openai_api_key_here
FIREBASE_CREDENTIALS={"type":"service_account",...}
ENCRYPTION_KEY=your_32_character_encryption_key_here
```

### Frontend Environment Variables

Create `blocklearn-frontend/.env`:

```env
REACT_APP_API_URL=http://localhost:5000
REACT_APP_CONTRACT_ADDRESS=0x1234567890123456789012345678901234567890
REACT_APP_FIREBASE_API_KEY=your_firebase_api_key
REACT_APP_FIREBASE_AUTH_DOMAIN=your_project.firebaseapp.com
REACT_APP_FIREBASE_PROJECT_ID=your_project_id
```

## 🚀 Features

### Frontend Features
- **Wallet Connection**: MetaMask integration
- **Study Sessions**: Create, edit, delete study sessions
- **AI Reminders**: Get personalized study tips
- **Blockchain Logging**: Log sessions to blockchain
- **Dark Mode**: Toggle between light and dark themes
- **Responsive Design**: Works on all devices

### Backend Features
- **Blockchain Integration**: Ethereum smart contract interaction
- **AI Integration**: OpenAI GPT-4 for study reminders
- **Authentication**: Firebase Admin SDK
- **Security**: AES-256-CBC encryption
- **API Endpoints**: RESTful API for all features

## 📚 API Documentation

### Blockchain Endpoints
- `POST /api/blockchain/create-session` - Create study session on blockchain
- `GET /api/health` - Health check

### AI Endpoints
- `POST /api/ai/reminder` - Generate AI study reminders

### Security Endpoints
- `POST /api/security/encrypt` - Encrypt data
- `POST /api/security/decrypt` - Decrypt data

## 🧪 Testing

### Frontend Testing
1. Open http://localhost:3000
2. Connect MetaMask wallet
3. Create study sessions
4. Generate AI reminders
5. Log sessions to blockchain

### Backend Testing
1. Check health endpoint: `curl http://localhost:5000/api/health`
2. Test AI reminder: `curl -X POST http://localhost:5000/api/ai/reminder -H "Content-Type: application/json" -d '{"prompt":"test"}'`

## 🚀 Deployment

### Frontend Deployment
```bash
cd blocklearn-frontend
npm run build
# Deploy 'build' folder to your hosting service
```

### Backend Deployment
```bash
cd blocklearn-backend
npm start
# Deploy to your server or cloud platform
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the ISC License.

## 🆘 Support

For support and questions:
- Check the individual README files in frontend and backend directories
- Review the API documentation
- Open an issue on GitHub

---

**BlockLearn** - Empowering collaborative learning with modern technology! 🎓✨
