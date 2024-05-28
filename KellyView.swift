import SwiftUI

struct PlayerStat: Identifiable {
    let id = UUID()
    var name: String
    var runs: Int
    var hits: Int
    var errors: Int
}

struct KellyView: View {
    @State var homeTeamScore: Int = 0
    @State var awayTeamScore: Int = 0
    
    @State var players: [PlayerStat] = [
        PlayerStat(name: "Player 1", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 2", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 3", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 4", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 5", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 6", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 7", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 8", runs: 0, hits: 0, errors: 0),
        PlayerStat(name: "Player 9", runs: 0, hits: 0, errors: 0)
    ]
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Softball Stat Tracker")
                .font(.title2)
                .padding(.top)
            
            HStack {
                VStack {
                    Text("Home Team")
                        .font(.headline)
                    Text("\(homeTeamScore)")
                        .font(.title)
                        .padding(.bottom, 5)
                    Stepper("Add Run", value: $homeTeamScore)
                        .padding(.horizontal)
                }
                Spacer()
                VStack {
                    Text("Away Team")
                        .font(.headline)
                    Text("\(awayTeamScore)")
                        .font(.title)
                        .padding(.bottom, 5)
                    Stepper("Add Run", value: $awayTeamScore)
                        .padding(.horizontal)
                }
            }
            .padding(.horizontal)
            
            List {
                ForEach($players) { $player in
                    VStack(alignment: .leading, spacing: 5) {
                        TextField("Player Name", text: $player.name)
                            .font(.subheadline)
                        HStack {
                            Stepper("Runs: \(player.runs)", value: $player.runs)
                            Spacer()
                            Stepper("Hits: \(player.hits)", value: $player.hits)
                            Spacer()
                            Stepper("Errors: \(player.errors)", value: $player.errors)
                        }
                        .font(.footnote)
                    }
                    .padding(.vertical, 5)
                }
            }
            
            Spacer()
        }
        .padding(.horizontal)
    }
}
