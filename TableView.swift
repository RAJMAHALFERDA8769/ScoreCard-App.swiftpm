import SwiftUI

struct Player {
    var name: String
    var points: Binding<Int>
    var assists: Binding<Int>
    var rebounds: Binding<Int>
    var steals: Binding<Int>
    var blocks: Binding<Int>
}
// ^^(binding<int> a connection between a value and a view that displays and changes it

struct TableView: View {
    @State var team1: [Player] = [
        Player(name: "Player 1", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0)),
        Player(name: "Player 2", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0)),
        Player(name: "Player 3", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0)),
        Player(name: "Player 4", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0)),
        Player(name: "Player 5", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0))

    ]
        
    
    @State var team2: [Player] = [
        Player(name: "Player A", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0)),
        Player(name: "Player B", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0)),
        Player(name: "Player C", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0)),
        Player(name: "Player D", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0)),
        Player(name: "Player E", points: .constant(0), assists: .constant(0), rebounds: .constant(0), steals: .constant(0), blocks: .constant(0))
    ]
    
    var body: some View {
        VStack {
            Text("Team 1").font(.headline).padding(.top)
            playerTable(players: $team1)
            
            Text("Team 2").font(.headline)
            playerTable(players: $team2)
        }.padding()
    }
    
    // binds player to array and then to view protocol
    func playerTable(players: Binding<[Player]>) -> some View {
        VStack {
            HStack {
                Text("Player").bold().frame(width: 80)
                Text("Pts").bold().frame(width: 40)
                Text("Ast").bold().frame(width: 40)
                Text("Reb").bold().frame(width: 50)
                Text("Stl").bold().frame(width: 35)
                Text("Blk").bold().frame(width: 35)
            }
            
            // property wrapper that wraps an array or a collection
            // *indice = returns range of all numbers
            ForEach(players.wrappedValue.indices, id: \.self) { index in
                let player = players.wrappedValue[index]
                HStack {
                    Text(player.name).frame(width: 80)
                    TextField("Pts", value: player.points, formatter: NumberFormatter()).frame(width: 40)
                    TextField("Ast", value: player.assists, formatter: NumberFormatter()).frame(width: 40)
                    TextField("Reb", value: player.rebounds, formatter: NumberFormatter()).frame(width: 50)
                    TextField("Stl", value: player.steals, formatter: NumberFormatter()).frame(width: 35)
                    TextField("Blk", value: player.blocks, formatter: NumberFormatter()).frame(width: 35)
                }
            }
        }
        .padding()

    }
}

