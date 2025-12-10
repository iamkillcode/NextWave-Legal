#!/bin/bash

# Quick Deploy Script for Account Deletion Policy Page
# Deploys data-deletion-site to GitHub Pages

echo "🚀 NextWave Account Deletion Policy - GitHub Pages Deployment"
echo "============================================================"
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Please run this script from the data-deletion-site folder."
    exit 1
fi

# Get repository URL
echo "📝 Enter your GitHub repository URL (e.g., https://github.com/iamkillcode/NextWave-Account-Deletion):"
read REPO_URL

if [ -z "$REPO_URL" ]; then
    echo "❌ Error: Repository URL cannot be empty"
    exit 1
fi

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    echo "🔧 Initializing git repository..."
    git init
    git branch -M main
fi

# Add files
echo "📦 Adding files..."
git add index.html README.md

# Commit
echo "💾 Committing changes..."
git commit -m "Deploy account deletion policy page"

# Add remote (handle case where it already exists)
git remote remove origin 2>/dev/null
git remote add origin "$REPO_URL"

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push -u origin main --force

echo ""
echo "✅ Deployment complete!"
echo ""
echo "📋 Next Steps:"
echo "1. Go to your repository on GitHub"
echo "2. Navigate to Settings > Pages"
echo "3. Set Source to: Deploy from branch 'main' / (root)"
echo "4. Wait 2-3 minutes for GitHub Pages to build"
echo "5. Your page will be available at:"
echo "   https://$(echo $REPO_URL | sed 's/https:\/\/github.com\///' | sed 's/\.git$//' | sed 's/\//.github.io\//')"
echo ""
echo "6. Use this URL in Google Play Console Data Safety section"
echo ""
