//
//  SoccerView.swift
//  ScoreCard App
//
//  Created by Mateus Salomao on 5/3/24.
//

import Foundation

import SwiftUI

struct SoccerView: View {
    @State private var homeTeam: String = "Home Team"
    @State private var awayTeam: String = "Away Team"
    @State private var homeScore: Int = 0
    @State private var awayScore: Int = 0
    
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
            
            
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

