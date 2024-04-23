import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("KeepScore")
                    .font(.system(size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 100)
                
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
                        .background(Color.gray)
                        .cornerRadius(10)
                }
                .padding(.bottom, 20)
                
                NavigationStack
                {
                    NavigationLink("View Past Games") {
                        SportStatsView()
                    }
                        .font(.system(size: 40))
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
