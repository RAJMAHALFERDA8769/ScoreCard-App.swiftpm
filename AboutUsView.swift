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
            Spacer()
            
             NavigationLink("Raj") {
                 RajView()
             }
             .font(.largeTitle)
             .foregroundColor(.white)
             .padding()
             .background(Color.blue)
             .cornerRadius(10)
             .padding(.bottom, 20)
            
             NavigationLink("Mateus") {
                 MateusView()
             }
             .font(.largeTitle)
             .foregroundColor(.white)
             .padding()
             .background(Color.blue)
             .cornerRadius(10)
             .padding(.bottom, 20)
             
             
             NavigationLink("Adam") {
                 AdamView()
             }
             .font(.largeTitle)
             .foregroundColor(.white)
             .padding()
             .background(Color.blue)
             .cornerRadius(10)
             .padding(.bottom, 20)
             
             
            NavigationLink("Myles") {
                MylesView()
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
