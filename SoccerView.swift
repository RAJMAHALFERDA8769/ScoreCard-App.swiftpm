//
//  SoccerView.swift
//  ScoreCard App
//
//  Created by Mateus Salomao on 5/3/24.
//

import Foundation

import SwiftUI

struct SoccerView: View {
    @State var homeTeam: String = "Home Team"
    @State var awayTeam: String = "Away Team"
    @State var homeScore: Int = 0
    @State var awayScore: Int = 0
    @State var matchTime: String = "0:00"
    
    var body: some View {
        VStack {
            Text("Soccer Match")
                .font(.largeTitle)
                .padding()
            
            HStack {
                VStack {
                    Text(homeTeam)
                        .font(.title)
                        .padding()
                    Text("\(homeScore)")
                        .font(.largeTitle)
                        .padding()
                    HStack {
                        Button(action: {
                            homeScore += 1
                        }) {
                            Text("+")
                                .font(.title)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        Button(action: {
                            if homeScore > 0 {
                                homeScore -= 1
                            }
                        }) {
                            Text("-")
                                .font(.title)
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
                Spacer()
                VStack {
                    Text(awayTeam)
                        .font(.title)
                        .padding()
                    Text("\(awayScore)")
                        .font(.largeTitle)
                        .padding()
                    HStack {
                        Button(action: {
                            awayScore += 1
                        }) {
                            Text("+")
                                .font(.title)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        Button(action: {
                            if awayScore > 0 {
                                awayScore -= 1
                            }
                        }) {
                            Text("-")
                                .font(.title)
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .padding(.horizontal)
            
            Text("Match Time: \(matchTime)")
                .font(.subheadline)
                .padding()
            
            Spacer()
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

