
import Foundation
import SwiftUI

struct TeamView: View {
    @State var team1Name = ""
    @State var team2Name = ""
   
    var body: some View {
        VStack {
            TextField("Team 1 Name", text: $team1Name)
                .padding()
            TextField("Team 2 Name", text: $team2Name)
                .padding()
            NavigationView {
                VStack {
                    NavigationLink("Next") {
                        PlayerView(team1Name: team1Name, team2Name: team2Name)
                    }
                }
                }
            }
        }
    }

