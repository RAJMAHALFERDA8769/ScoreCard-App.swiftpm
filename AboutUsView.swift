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
                NavigationLink("Raj") {
                    RajView()
                }
                .font(.system(size: 40))
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.teal)
                .cornerRadius(10)
                .padding(.bottom, 20)
                NavigationLink("Mateus") {
                    MateusView()
                }
                .font(.system(size: 40))
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.teal)
                .cornerRadius(10)
                .padding(.bottom, 20)
                NavigationLink("Adam") {
                    AdamView()
                }
                .font(.system(size: 40))
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.teal)
                .cornerRadius(10)
                .padding(.bottom, 20)
                NavigationLink("Myles") {
                    MylesView()
                }
                .font(.system(size: 40))
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.teal)
                .cornerRadius(10)
                .padding(.bottom, 20)
                
            }
           
            
        }
    }
}
