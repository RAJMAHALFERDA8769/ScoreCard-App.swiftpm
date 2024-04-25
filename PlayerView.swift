//
//  PlayerView.swift
//  ScoreCard App
//
//  Created by Mateus Salomao on 4/25/24.
//

import Foundation
import SwiftUI

struct PlayerView: View {

    
    @State var t1p1 = ""
    @State var t1p2 = ""
    @State var t1p3 = ""
    @State var t1p4 = ""
    @State var t1p5 = ""
    @State var t1p6 = ""
    @State var t1p7 = ""
    @State var t1p8 = ""
  
    @State var t2p1 = ""
    @State var t2p2 = ""
    @State var t2p3 = ""
    @State var t2p4 = ""
    @State var t2p5 = ""
    @State var t2p6 = ""
    @State var t2p7 = ""
    @State var t2p8 = ""
   
   
    var body: some View {
        
        HStack{
            Spacer()
            VStack{
               Text("Team 1")
                TextField("Player 1", text: $t1p1)
                TextField("Player 2", text: $t1p2)
                TextField("Player 3", text: $t1p3)
                TextField("Player 4", text: $t1p4)
                TextField("Player 5", text: $t1p5)
                
                
                
            }
            Spacer()
            VStack{
                Text("Team 2")
                TextField("Player 1", text: $t2p1)
                TextField("Player 2", text: $t2p2)
                TextField("Player 3", text: $t2p3)
                TextField("Player 4", text: $t2p4)
                TextField("Player 5", text: $t2p5)
               
            }
            Spacer()
        }
  
              
                
    }
}
