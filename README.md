# Depression Dashboard iOS

Native iOS app for the Depression Dashboard, built with SwiftUI.

## Screenshots/Demo

<img src="screenshots/overview.png" width="200" /> <img src="screenshots/games.png" width="200" /> <img src="screenshots/upcoming.png" width="200" />

## Key Features

- Overview dashboard with depression score and breakdown by team
- Recent games list with scores, opponents, and game details
- Upcoming events calendar with date and time information
- Pull-to-refresh functionality on all screens
- Dark theme UI matching the web dashboard
- Error handling and loading states

## Challenges Faced

- Swift concurrency and actor isolation issues resolved with proper Sendable types
- API integration requiring consistent data models between backend and iOS
- Date parsing across different formats and timezone handling
- UI/UX design to match web dashboard while maintaining native iOS feel

## Future Additions

- Push notifications for important game results
- Widget support for home screen
- Historical trend charts
- Offline mode with cached data
- Apple Watch companion app

## License

Same license as the main Depression Dashboard project.

