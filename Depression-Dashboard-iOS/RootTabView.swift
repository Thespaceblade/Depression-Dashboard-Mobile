
import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            OverviewView()
                .tabItem {
                    Label("Overview", systemImage: "speedometer")
                }

            GamesView()
                .tabItem {
                    Label("Games", systemImage: "clock.arrow.circlepath")
                }

            UpcomingView()
                .tabItem {
                    Label("Upcoming", systemImage: "calendar")
                }
        }
    }
}
