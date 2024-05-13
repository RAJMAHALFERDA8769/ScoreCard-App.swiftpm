
import Foundation
import SwiftUI

struct ResultsView: View {
    var body: some View {
        VStack {
            Text("Results:")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                .padding(.bottom, 20)
            Spacer()
            Text("Coming Soon...")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding(.bottom, 20)
        }
    }
}
