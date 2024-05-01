import Foundation
import SwiftUI

struct PlayerStats: Identifiable {
    var id = UUID()
    var playerName: String
    var points: Int
    var assists: Int
    var rebounds: Int
    var blocks: Int
    var steals: Int
    var fouls: Int
}
struct TableView: View {
    @State var playersStats: [PlayerStats] = [
        PlayerStats(playerName: "Player 1", points: 0, assists: 0, rebounds: 0, blocks: 0, steals: 0, fouls: 0),
        PlayerStats(playerName: "Player 2", points: 0, assists: 0, rebounds: 0, blocks: 0, steals: 0, fouls: 0),
        PlayerStats(playerName: "Player 3", points: 0, assists: 0, rebounds: 0, blocks: 0, steals: 0, fouls: 0),
        PlayerStats(playerName: "Player 4", points: 0, assists: 0, rebounds: 0, blocks: 0, steals: 0, fouls: 0),
        PlayerStats(playerName: "Player 5", points: 0, assists: 0, rebounds: 0, blocks: 0, steals: 0, fouls: 0)
    ]
}

