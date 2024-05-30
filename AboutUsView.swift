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
                Text("Raj")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                Text("Myles")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                Text("Adam")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                Text("Mateus")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                
                
            }
        }
    }
}
