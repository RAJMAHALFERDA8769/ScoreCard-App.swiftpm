
import Foundation
import SwiftUI

struct PlayerView: View {
    
    @State var t1p1 = ""
    @State var t1p2 = ""
    @State var t1p3 = ""
    @State var t1p4 = ""
    @State var t1p5 = ""
    
    @State var t2p1 = ""
    @State var t2p2 = ""
    @State var t2p3 = ""
    @State var t2p4 = ""
    @State var t2p5 = ""
    
    let team1Name: String
    let team2Name: String
   
    var body: some View {
        
        HStack{
            Spacer()
            VStack{
               Text(team1Name)
                TextField("Player 1", text: $t1p1)
                TextField("Player 2", text: $t1p2)
                TextField("Player 3", text: $t1p3)
                TextField("Player 4", text: $t1p4)
                TextField("Player 5", text: $t1p5)
            }
            Spacer()
            VStack{
                Text(team2Name)
                TextField("Player 1", text: $t2p1)
                TextField("Player 2", text: $t2p2)
                TextField("Player 3", text: $t2p3)
                TextField("Player 4", text: $t2p4)
                TextField("Player 5", text: $t2p5)
            }
            Spacer()
        }
  
        NavigationView {
            VStack {
                NavigationLink("Next") {
                    TableView()
                }
                .font(.system(size: 20))
                .font(.title)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(60)
                
                
            }
        }
    }
}
