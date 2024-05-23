
import SwiftUI
struct SoccerTeamView: View {
    @State var Soccerteam1Name = ""
    @State var Soccerteam2Name = ""
   
    var body: some View {
        VStack {
            
           Spacer(minLength: 100)
            
            Text("Select Team Names")
                .font(.system(size: 30))
                .font(.title)
         
            TextField("Enter Team 1 Name", text: $Soccerteam1Name)
                .padding()
                .textFieldStyle(.roundedBorder)
                .font(.system(size: 20))
                                    .font(.title)
                                    .cornerRadius(60)
        
            TextField("Enter Team 2 Name", text: $Soccerteam2Name)
            
                .padding()
                .textFieldStyle(.roundedBorder)
                .font(.system(size: 20))
                                    .font(.title)
                                    .cornerRadius(60)
            NavigationView {
                VStack {
                    NavigationLink("Next") {
                        SoccerView(homeScore: 0, awayScore: 0, Soccerteam1Name: Soccerteam1Name, Soccerteam2Name: Soccerteam2Name)
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


