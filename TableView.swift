import Foundation
import SwiftUI

struct Player {
    var name: String
    var points: Binding<Int>
    var assists: Binding<Int>
    var rebounds: Binding<Int>
    var steals: Binding<Int>
    var blocks: Binding<Int>
    var fouls: Binding<Int>
    //var (whatever): Binding<Int> means that points is a property that displays a two-way connection to an integer value. Any changes made to that integer will be reflected in the original integer value
}

struct TableView: View {
    @State var team1: [Player] = [
        Player(name: "Player 1", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0), fouls: .constant(0)),
        Player(name: "Player 2", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0), fouls: .constant(0)),
        Player(name: "Player 3", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0), fouls: .constant(0)),
        Player(name: "Player 4", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0), fouls: .constant(0)),
        Player(name: "Player 5", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0), fouls: .constant(0))
    ]
    
    @State var team2: [Player] = [
        Player(name: "Player A", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0), fouls: .constant(0)),
        Player(name: "Player B", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0), fouls: .constant(0)),
        Player(name: "Player C", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0), fouls: .constant(0)),
        Player(name: "Player D", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0), fouls: .constant(0)),
        Player(name: "Player E", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0), fouls: .constant(0))
    ]
    //research constant
    
    var body: some View {
        VStack {
            Text("Team 1").font(.headline)
            playerTable(players: $team1)
            
            Text("Team 2").font(.headline)
            playerTable(players: $team2)
        }.padding()
    }
    
    func playerTable(players: Binding<[Player]>) -> some View {
        //research the 2 lines of code above
        VStack {
            HStack {
                Text("Player").bold().frame(width: 100)
                Text("Points").bold().frame(width: 60)
                Text("Assists").bold().frame(width: 60)
                Text("Rebounds").bold().frame(width: 70)
                Text("Steals").bold().frame(width: 50)
                Text("Blocks").bold().frame(width: 50)
                Text("Fouls").bold().frame(width: 50)
            }
            
            ForEach(players.wrappedValue.indices, id: \.self) { index in
                //research the 2 lines of code above
                let player = players.wrappedValue[index]
                HStack {
                    Text(player.name).frame(width: 100)
                    TextField("Points", value: player.points, formatter: NumberFormatter()).frame(width: 60)
                    TextField("Assists", value: player.assists, formatter: NumberFormatter()).frame(width: 60)
                    TextField("Rebounds", value: player.rebounds, formatter: NumberFormatter()).frame(width: 70)
                    TextField("Steals", value: player.steals, formatter: NumberFormatter()).frame(width: 50)
                    TextField("Blocks", value: player.blocks, formatter: NumberFormatter()).frame(width: 50)
                    TextField("Fouls", value: player.fouls, formatter: NumberFormatter()).frame(width: 50)
                }
            }
        }
    }
}
