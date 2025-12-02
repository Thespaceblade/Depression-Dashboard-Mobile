# Depression Dashboard iOS

Native iOS app for the Depression Dashboard, built with SwiftUI.

## Features

- **Overview**: View overall depression score with breakdown by team
- **Recent Games**: Browse recent game results with scores and details
- **Upcoming Events**: See upcoming games and events
- **Pull-to-Refresh**: Refresh data on any screen
- **Dark Theme**: Beautiful dark UI matching the web dashboard

## Requirements

- iOS 15.0+
- Xcode 14.0+
- Swift 5.7+

## Setup

1. Clone this repository
2. Open `Depression-Dashboard-iOs.xcodeproj` in Xcode
3. Build and run on simulator or device

## API

The app connects to the Depression Dashboard API hosted on Railway:
- Base URL: `https://depression-dashboard-production.up.railway.app`
- Endpoints:
  - `GET /api/depression` - Get depression score and breakdown
  - `GET /api/recent-games` - Get recent game results
  - `GET /api/upcoming-events` - Get upcoming events
  - `POST /api/refresh` - Trigger data refresh

## Architecture

- **APIClient**: Actor-based API client for thread-safe network requests
- **Models**: Codable data models matching the API response structure
- **Views**: SwiftUI views for each screen
  - `OverviewView`: Main dashboard with score and breakdown
  - `GamesView`: List of recent games
  - `UpcomingView`: List of upcoming events
  - `RootTabView`: Tab navigation container

## Project Structure

```
Depression-Dashboard-iOs/
├── Depression-Dashboard-iOs/
│   ├── APIClient.swift          # API client actor
│   ├── Models.swift              # Data models
│   ├── Depression_Dashboard_iOsApp.swift  # App entry point
│   ├── OverviewView.swift        # Overview screen
│   ├── GamesView.swift           # Recent games screen
│   ├── UpcomingView.swift        # Upcoming events screen
│   ├── RootTabView.swift         # Tab navigation
│   └── Assets.xcassets/          # App icons and assets
├── Depression-Dashboard-iOsTests/
└── Depression-Dashboard-iOsUITests/
```

## Development

### Running Tests

```bash
# Unit tests
xcodebuild test -scheme Depression-Dashboard-iOs -destination 'platform=iOS Simulator,name=iPhone 15'

# UI tests
xcodebuild test -scheme Depression-Dashboard-iOs -destination 'platform=iOS Simulator,name=iPhone 15' -only-testing:Depression-Dashboard-iOsUITests
```

## Deployment

### TestFlight

1. Archive the app in Xcode
2. Upload to App Store Connect
3. Submit for TestFlight beta testing

### App Store

1. Follow TestFlight steps
2. Submit for App Store review

## License

Same license as the main Depression Dashboard project.

