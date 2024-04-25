//
//  TeamView.swift
//  ScoreCard App
//
//  Created by Arun Rajeishbabu on 4/25/24.
//

import Foundation
import SwiftUI
struct Player {
    
}


struct Team {
    var name: String
    var players: [Player]
}
struct TeamView: View {
    @State var team1Name = ""
    @State var team2Name = ""
   
    var body: some View {
        VStack {
            TextField("Team 1 Name", text: $team1Name)
                .padding()
            TextField("Team 2 Name", text: $team2Name)
                .padding()
            NavigationView {
                VStack {
                    NavigationLink("Go To Player View") {
                        PlayerView()
                    }
                    
                    
                }
                }
            }
        }
    }

