import SwiftUI

struct HockeyCardView: View {
    let player: HockeyPlayer
    
    var body: some View {
        ZStack {
            // Color blocks: Three equally spaced color sections
            VStack(spacing: 5) {
                Rectangle()
                    .fill(Color.green) // First color block
                
                Rectangle()
                    .fill(Color.blue) // Second color block
                
                Rectangle()
                    .fill(Color.red) // Third color block
            }
            .ignoresSafeArea()

            VStack {
                Text(player.name)
                    .font(.custom("Chalkduster", size: 30)) // Changed to Times New Roman
                    .fontWeight(.bold)
                    .padding(.top, 80) // Adjust this padding to move it closer to the top
                Spacer()
                // Position is pushed to the second row (between hockey stick and name)
                Text(player.position)
                    .font(.custom("Times New Roman", size: 29)) // Changed to Times New Roman
                    .foregroundColor(.white)
                    .padding(.top, 10)
                // Hockey sticks in the second block (blue color block)
                Image(player.image)
                    .resizable()
                ZStack {
                    // First hockey stick, yellow color
                    HockeyStick()
                        .frame(width: 100, height: 155)
                        .scaleEffect(x: 1, y: -1)
                        .rotationEffect(Angle(degrees: 210))
                        .foregroundColor(.yellow) // Set color to yellow
                    // Second hockey stick, yellow color
                    HockeyStick()
                        .frame(width: 100, height: 155)
                        .scaleEffect(x: -1, y: -1)
                        .rotationEffect(Angle(degrees: -210))
                        .offset(x: 30)
                        .foregroundColor(.yellow) // Set color to yellow
                }
                Spacer()
                // Team at the bottom
                Text(player.team)
                    .font(.custom("Times New Roman", size: 27)) // Changed to Times New Roman
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding(.bottom,-40)
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

#Preview {
    ContentView()
}
