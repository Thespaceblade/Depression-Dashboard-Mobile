# Depression Dashboard iOS

Native iOS app for the Depression Dashboard, built with SwiftUI.

## Screenshots/Demo

<img src="screenshots/overview.png" width="200" /> <img src="screenshots/games.png" width="200" /> <img src="screenshots/upcoming.png" width="200" />

## Key Features

- View your overall depression score and see how each team is contributing to it
- Check out recent game results with scores and see if your teams won or lost
- See what games are coming up so you can prepare yourself emotionally
- Pull down to refresh and get the latest data whenever you want
- Dark theme that's easy on the eyes
- Handles errors gracefully so you're not left staring at a broken screen

## Challenges Faced

- Had to figure out Swift's concurrency system and how to properly isolate actors to avoid crashes
- Making sure the data models matched between the backend and iOS app was trickier than expected
- Dates came in all sorts of formats from the API, so parsing them correctly took some work
- Tried to match the web dashboard's look while still feeling like a native iOS app

## Future Additions

- Get notified when something big happens (like a rivalry loss)
- Add a widget to your home screen so you can check your depression level at a glance
- Show charts of how depressed you've been over time
- Work offline so you can check scores even without internet
- Maybe build an Apple Watch app so you can check your depression level on your wrist

## License

Same license as the main Depression Dashboard project.

