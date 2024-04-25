//
//  SportSelectView.swift
//  ScoreCard App
//
//  Created by Myles Mosier on 4/19/24.
//

import Foundation
import SwiftUI

struct SportSelectView: View {
    var body: some View {
        VStack {
            HStack{
                NavigationStack
                {
                    NavigationLink("Next") {
                    TeamView()
                    }
                    .font(.system(size: 40))
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                .padding(.bottom, 20)
                NavigationStack
                {
                    NavigationLink("Home") {
                        ScoreboardView()
                    }
                    .font(.system(size: 40))
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                .padding(.bottom, 20)
            }
            
                .padding(.bottom, 20)
                
                
            }
        }
    }

    

