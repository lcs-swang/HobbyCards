import SwiftUI

struct HockeyCardView: View {
    let player: HockeyPlayer
    
    var body: some View {
        ZStack {
            // Color blocks: Three equally spaced color sections
            VStack(spacing: 0) {
                Rectangle()
                    .fill(Color.gray) // First color block
                
                Rectangle()
                    .fill(Color.blue) // Second color block
                
                Rectangle()
                    .fill(Color.purple) // Third color block
            }
            .ignoresSafeArea()

            VStack {
                Spacer()
                
                // Name at the top
                Text(player.name)
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                
                // Position is pushed to the second row (between hockey stick and name)
                Text(player.position)
                    .font(.title)
                    .foregroundColor(.black)

                // Hockey stick in the second block (blue color block)
                ZStack {
                    HockeyStick()
                        .frame(width: 100, height: 150)
                    
                    HockeyStick()
                        .frame(width: 100, height: 150)
                        .rotationEffect(.degrees(180))
                }
                .padding(.top, 10)
                
                Spacer()

                // Team at the bottom
                Text(player.team)
                    .font(.title)
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding()
        }
    }
}

// Main view with TabView to show all the players in individual tabs
struct ContentView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                HockeyCardView(player: player)
                    .tabItem {
                        Text(player.name)
                        Image(systemName: "person.fill")
                    }
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
