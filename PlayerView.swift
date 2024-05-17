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
    
    var team1Name: String
    var team2Name: String
    
    var body: some View {
        VStack {
            Spacer(minLength: 50)
            
            Text("Select Player Names")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            HStack {
                VStack {
                    Text(team1Name)
                        .font(.title)
                        .padding(.bottom, 10)
                    
                    TextField("Player 1", text: $t1p1)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 20))
                    
                    TextField("Player 2", text: $t1p2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 20))
                    
                    TextField("Player 3", text: $t1p3)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 20))
                    
                    TextField("Player 4", text: $t1p4)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 20))
                    
                    TextField("Player 5", text: $t1p5)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 20))
                }
                .padding()
                
                Spacer()
                
                VStack {
                    Text(team2Name)
                        .font(.title)
                        .padding(.bottom, 10)
                    
                    TextField("Player 1", text: $t2p1)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 20))
                    
                    TextField("Player 2", text: $t2p2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 20))
                    
                    TextField("Player 3", text: $t2p3)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 20))
                    
                    TextField("Player 4", text: $t2p4)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 20))
                    
                    TextField("Player 5", text: $t2p5)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 20))
                }
                
            }
            
            NavigationLink(destination: TableView()) {
                Text("Next")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.top, 20)
            
            Spacer()
        }
        .padding()
    }
}
