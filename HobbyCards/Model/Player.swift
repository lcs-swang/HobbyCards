//
//  Player.swift
//  HobbyCards
//
//  Created by Susie Wang on 2024-12-14.
//
import Foundation

// Define the HockeyPlayer model
struct HockeyPlayer: Identifiable {
    let id = UUID()
    let name: String           // Player's name
    let position: String       // Position (e.g., Forward, Defenseman, Goalie)
    let team: String           // Team the player belongs to
}

// Define the players
let WG = HockeyPlayer(name: "Name: Wayne Gretzky", position: "Position: Center", team: "Team: Edmonton Oilers")
let SC = HockeyPlayer(name: "Name: Sidney Crosby", position: "Position: Center", team: "Team: Pittsburgh Penguins")
let CM = HockeyPlayer(name: "Name: Connor McDavid", position: "Position: Center", team: "Team: Edmonton Oilers")
let PR = HockeyPlayer(name: "Name: Patrick Roy", position: "Position: Goalie", team: "Team: Montreal Canadiens")

// Create the Players array
let players = [WG, SC, CM, PR]
