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
                Button(action: {
                })  {
                    Text("Basketball")
                        .font(.system(size: 40))
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(10)
                }
                .padding(.bottom, 20)
                
                Button("Golf") {
                    
                }
            }
        }
    }
}
