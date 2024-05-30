//
//  AboutUsView.swift
//  KeepScore App
//
//  Created by Myles Mosier on 5/30/24.
//

import Foundation
import SwiftUI

struct AboutUsView: View {
    var body: some View {
        VStack {
            Text("The Creators")
                .font(.largeTitle)
                .bold()
            Image("beautys")
                .resizable()
               
            VStack {
                Button("Raj")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                Button("Myles")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                Button("Adam")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                Button("Mateus")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                
                
            }
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .padding(.bottom, 20)
            
            
        }
    }
}
