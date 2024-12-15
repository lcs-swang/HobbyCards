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
            // Color blocks: Three different color sections
            HStack(spacing: 0) {
                Rectangle()
                    .fill(Color.gray)  // First color block
                    .frame(width: 100)
                
                Rectangle()
                    .fill(Color.blue)  // Second color block
                    .frame(width: 100)
                
                Rectangle()
                    .fill(Color.purple)  // Third color block
                    .frame(width: 100)
            }
            .frame(height: 100)  // Height for the color blocks section
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
                    .font(.headline)
                    .foregroundColor(.black)
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
}
