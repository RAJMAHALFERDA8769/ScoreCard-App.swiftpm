
import Foundation
import SwiftUI

struct TeamView: View {
    @State var team1Name = ""
    @State var team2Name = ""
   
    var body: some View {
        VStack {
            
           Spacer(minLength: 100)
            
            Text("Select Team Names")
                .font(.system(size: 30))
                .font(.title)
         
            TextField("Enter Team 1 Name", text: $team1Name)
                .padding()
                .textFieldStyle(.roundedBorder)
                .font(.system(size: 20))
                                    .font(.title)
                                    .cornerRadius(60)
        
            TextField("Enter Team 2 Name", text: $team2Name)
            
                .padding()
                .textFieldStyle(.roundedBorder)
                .font(.system(size: 20))
                                    .font(.title)
                                    .cornerRadius(60)
            NavigationView {
                VStack {
                    NavigationLink("Next") {
                        PlayerView(team1Name: team1Name, team2Name: team2Name)
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
    }

