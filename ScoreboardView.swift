
import Foundation

import SwiftUI

struct ScoreboardView: View {
    var body: some View {
        
        Spacer()
        
        NavigationStack
        {
            NavigationLink("Scoreboard") {
                SportSelectView()
            }
            .font(.system(size: 40))
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
        }
        .padding(.bottom, 20)
    }
}
