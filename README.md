# Depression Dashboard iOS

Native iOS app for the Depression Dashboard, built with SwiftUI.

## Screenshots/Demo

_Add screenshots or demo GIFs of your app here_

<!-- Example format:
![Overview Screen](screenshots/overview.png)
![Games Screen](screenshots/games.png)
![Upcoming Events Screen](screenshots/upcoming.png)
-->

## Key Features

### Overview Dashboard
- View overall depression score with emoji and color-coded levels
- See breakdown by team with individual depression points
- Real-time score updates with timestamp
- Visual progress bar showing depression level

### Recent Games
- Browse recent game results with scores and details
- Color-coded results (green for wins, red for losses, yellow for placements)
- Game details including opponent, date/time, home/away status
- Overtime and rivalry game indicators

### Upcoming Events
- View upcoming games and events
- Date and time formatting with timezone support
- Home/away indicators
- Event type classification

### User Experience
- **Pull-to-Refresh**: Refresh data on any screen
- **Dark Theme**: Beautiful dark UI matching the web dashboard
- **Native Performance**: Smooth animations and responsive UI
- **Error Handling**: Graceful error messages and loading states

## Requirements

- iOS 15.0+
- Xcode 14.0+
- Swift 5.7+

## Setup

1. Clone this repository
2. Open `Depression-Dashboard-iOS.xcodeproj` in Xcode
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
Depression-Dashboard-iOS/
├── Depression-Dashboard-iOS/
│   ├── APIClient.swift          # API client actor
│   ├── Models.swift              # Data models
│   ├── Depression_Dashboard_iOsApp.swift  # App entry point
│   ├── OverviewView.swift        # Overview screen
│   ├── GamesView.swift           # Recent games screen
│   ├── UpcomingView.swift        # Upcoming events screen
│   ├── RootTabView.swift         # Tab navigation
│   └── Assets.xcassets/          # App icons and assets
├── Depression-Dashboard-iOSTests/
└── Depression-Dashboard-iOSUITests/
```

## Development

### Running Tests

```bash
# Unit tests
xcodebuild test -scheme Depression-Dashboard-iOS -destination 'platform=iOS Simulator,name=iPhone 15'

# UI tests
xcodebuild test -scheme Depression-Dashboard-iOS -destination 'platform=iOS Simulator,name=iPhone 15' -only-testing:Depression-Dashboard-iOSUITests
```

## Deployment

### TestFlight

1. Archive the app in Xcode
2. Upload to App Store Connect
3. Submit for TestFlight beta testing

### App Store

1. Follow TestFlight steps
2. Submit for App Store review

## Challenges Faced

### Swift Concurrency
- Initial challenges with actor isolation and MainActor conformance
- Resolved by using proper `Sendable` types and actor-based API client
- Implemented thread-safe network requests using Swift's concurrency model

### API Integration
- Ensuring consistent data models between backend and iOS app
- Handling optional fields and date parsing across different formats
- Implementing proper error handling for network failures

### UI/UX Design
- Creating a cohesive dark theme that matches the web dashboard
- Implementing pull-to-refresh functionality across all views
- Designing intuitive navigation with tab-based interface

## Future Additions

- [ ] Push notifications for important game results
- [ ] Widget support for home screen quick view
- [ ] Historical trend charts showing depression score over time
- [ ] Team-specific detail views with extended statistics
- [ ] Offline mode with cached data
- [ ] Apple Watch companion app
- [ ] Share functionality for depression scores
- [ ] Customizable color themes
- [ ] Haptic feedback for score changes
- [ ] App Store optimization and TestFlight beta testing

## License

Same license as the main Depression Dashboard project.

