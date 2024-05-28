//
//  BaseballView.swift
//  ScoreCard App
//
//  Created by Mateus Salomao on 5/3/24.
//

import Foundation
import SwiftUI

struct BaseballView: View {
    @State var homeTeamScore: Int = 0
    @State var awayTeamScore: Int = 0
    var body: some View {
        VStack(spacing: 20) {
            Text("Baseball ScoreCard")
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
        }
    }
    
}
