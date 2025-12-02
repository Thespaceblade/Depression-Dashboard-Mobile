#!/bin/bash
# Setup script for moving iOS app to separate repository

echo "🚀 Setting up iOS app repository..."

# Check if we're in the right directory
if [ ! -f "Depression-Dashboard-iOs.xcodeproj/project.pbxproj" ]; then
    echo "❌ Error: Please run this script from the Depression-Dashboard-iOs directory"
    exit 1
fi

# Initialize git if not already done
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
fi

# Add remote if not already added
if ! git remote get-url origin &>/dev/null; then
    echo "🔗 Adding remote repository..."
    git remote add origin https://github.com/Thespaceblade/Depression-Dashboard-Mobile.git
else
    echo "✅ Remote already configured"
fi

# Add all files
echo "📝 Adding files..."
git add .

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "ℹ️  No changes to commit"
else
    echo "💾 Committing files..."
    git commit -m "Initial commit: iOS app for Depression Dashboard"
fi

# Push to remote
echo "📤 Pushing to remote repository..."
echo "⚠️  Note: You may need to set the upstream branch if this is the first push"
git push -u origin main || git push -u origin master || echo "⚠️  Push failed. You may need to create the repository on GitHub first or set the branch name."

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. If the repository doesn't exist on GitHub, create it at: https://github.com/Thespaceblade/Depression-Dashboard-Mobile"
echo "2. Then run this script again or manually push with: git push -u origin main"
echo "3. Remove the Depression-Dashboard-iOs folder from the main repo"

