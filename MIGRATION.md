# Migration Guide: Moving iOS App to Separate Repo

This folder contains the iOS app that has been moved to a separate repository: https://github.com/Thespaceblade/Depression-Dashboard-Mobile.git

## Steps to Migrate

1. **Initialize the new repo** (if not already done):
   ```bash
   cd Depression-Dashboard-iOs
   git init
   git remote add origin https://github.com/Thespaceblade/Depression-Dashboard-Mobile.git
   ```

2. **Add all files**:
   ```bash
   git add .
   git commit -m "Initial commit: iOS app"
   git push -u origin main
   ```

3. **Remove from main repo**:
   ```bash
   cd ..  # Back to main repo root
   git rm -r --cached Depression-Dashboard-iOs/
   git commit -m "Move iOS app to separate repository"
   git push
   ```

## What's Included

- All Swift source files
- Xcode project files
- Assets (icons, images)
- Tests (unit and UI tests)
- README.md with setup instructions
- .gitignore for iOS/Xcode files

## API Connection

The iOS app connects to the Railway backend:
- Base URL: `https://depression-dashboard-production.up.railway.app`
- All API endpoints remain the same

## Future Development

- iOS app development happens in: `Depression-Dashboard-Mobile` repo
- Backend/web development happens in: `Depression-Dashboard` repo
- Both repos are independent but share the same API

