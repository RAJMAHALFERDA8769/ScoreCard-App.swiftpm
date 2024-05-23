//
//  SoccerView.swift
//  ScoreCard App
//
//  Created by Mateus Salomao on 5/3/24.
//

import Foundation

import SwiftUI

struct SoccerView: View {
    
    @State var homeScore: Int = 0
    @State var awayScore: Int = 0
    var Soccerteam1Name: String
    var Soccerteam2Name: String
    
    var body: some View {
        VStack {
            Text("Soccer Match")
                .font(.largeTitle)
                .padding()
            
            HStack {
                VStack {
                    Text(Soccerteam1Name)
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
                    Text(Soccerteam2Name)
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

