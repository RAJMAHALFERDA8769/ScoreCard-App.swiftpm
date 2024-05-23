//
//  KellyView.swift
//  KeepScore App
//
//  Created by Myles Mosier on 5/23/24.
//

import Foundation
import SwiftUI

struct PlayerStat: Identifiable {
    let id = UUID()
    var name: String
    var runs: Int
    var hits: Int
    var errors: Int
}

struct KellyView: View {
    @State var homeTeamScore: Int = 0
    @State var awayTeamScore: Int = 0
    
    @State var players: [PlayerStat] = [
        PlayerStat(name: "Player 1", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 2", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 3", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 4", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 5", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 6", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 7", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 8", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 9", runs: 0, hits: 0, errors: 0)
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Softball Stat Tracker")
                .font(.largeTitle)
                .padding()
            
            HStack {
                VStack {
                    Text("Home Team")
                        .font(.title2)
                    Text("\(homeTeamScore)")
                        .font(.largeTitle)
                        .padding()
                    Stepper("Add Run", value: $homeTeamScore)
                        .padding()
                }
                Spacer()
                VStack {
                    Text("Away Team")
                        .font(.title2)
                    Text("\(awayTeamScore)")
                        .font(.largeTitle)
                        .padding()
                    Stepper("Add Run", value: $awayTeamScore)
                        .padding()
                }
            }
            .padding()
            
            List {
                ForEach($players) { $player in
                    VStack(alignment: .leading) {
                        TextField("Player Name", text: $player.name)
                            .font(.headline)
                        HStack {
                            Stepper("Runs: \(player.runs)", value: $player.runs)
                            Spacer()
                            Stepper("Hits: \(player.hits)", value: $player.hits)
                            Spacer()
                            Stepper("Errors: \(player.errors)", value: $player.errors)
                        }
                    }
                    .padding()
                }
            }
            
            Spacer()
        }
        .padding()
    }
}
