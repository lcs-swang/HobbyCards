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
let WG = HockeyPlayer(name: "Wayne Gretzky", position: "Center", team: "Edmonton Oilers")
let SC = HockeyPlayer(name: "Sidney Crosby", position: "Center", team: "Pittsburgh Penguins")
let CM = HockeyPlayer(name: "Connor McDavid", position: "Center", team: "Edmonton Oilers")
let PR = HockeyPlayer(name: "Patrick Roy", position: "Goalie", team: "Montreal Canadiens")

// Create the Players array
let players = [WG, SC, CM, PR]
