import SwiftUI

struct HockeyCardView: View {
    let player: HockeyPlayer
    
    var body: some View {
        HStack {
            // Color blocks: Three equally spaced color sections
            
                VStack(spacing:0) {
                    Rectangle()
                        .fill(Color.gray) // First color block
                    
                    Rectangle()
                        .fill(Color.blue) // Second color block
                    
                    Rectangle()
                        .fill(Color.purple) // Third color block
                }
            }
            .frame(height: 1000) // Height for the color blocks section
            
            VStack {
                Text(player.name)
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Spacer()
                VStack {
                    HockeyStick()
                        .size(width: 100, height: 150)
                        .rotationEffect(.degrees(0))
                    HockeyStick()
                        .size(width: 100, height: 150)
                        .rotationEffect(.degrees(180))
                }
                
                Text(player.position)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Spacer()
                Spacer()
                Text(player.team)
                    .font(.headline)
                    .foregroundColor(.blue)
            }
            .padding()
            .frame(width: 250, height: 300)
            .background(Color.white)
            .cornerRadius(10)
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
