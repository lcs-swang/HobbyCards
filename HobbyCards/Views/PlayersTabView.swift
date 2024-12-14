//
//  PlayersTabView.swift
//  HobbyCards
//
//  Created by Susie Wang on 2024-12-14.
//
import SwiftUI

struct PlayersTabView: View{
    
    var body: some View{
        TabView{
            ForEach(players){currentPlayer in
                HockeyPlayer(player: currentPlayer,}
        }
    }
    .ignoresSafeArea()
    .tabViewStyle(.page(indexDisplayMode: .never)
    . persistentSystemOverlays(.hidden)
    }


#Preview{
   PlayersTabView()
}
