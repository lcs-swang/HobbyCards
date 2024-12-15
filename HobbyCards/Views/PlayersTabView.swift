//
//  PlayersTabView.swift
//  HobbyCards
//
//  Created by Susie Wang on 2024-12-14.
//
import SwiftUI


struct HockeyCardView: View {
    let player: HockeyPlayer
    
    var body: some View {
        VStack {
            Text(player.name)
                .font(.title)
                .fontWeight(.bold)
            ZStack {
                HockeyStick()
                    .size(width: 60,height: 60)
                HockeyStick()
                    .size(width: 60,height: 60)
            }
            Text(player.position)
                .font(.subheadline)
                .foregroundColor(.gray)
            Spacer()
            Text(player.team)
                .font(.subheadline)
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
