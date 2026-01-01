#!/bin/bash

echo "🚀 Starting Menix Tournament App Deployment..."

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI not found. Installing..."
    npm install -g vercel
fi

# Deploy Backend
echo "📦 Deploying Backend..."
cd backend
vercel --prod --yes
cd ..

# Deploy Frontend
echo "🌐 Deploying Frontend..."
vercel --prod --yes

echo "✅ Deployment completed!"
echo "Frontend: https://menix.vercel.app"
echo "Backend: https://menix-backend.vercel.app"
echo ""
echo "⚠️  Don't forget to set environment variables in Vercel dashboard!"
echo "Backend: MONGO_URI, FRONTEND_URL"
echo "Frontend: VITE_API_URL" 