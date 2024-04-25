import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("KeepScore")
                    .font(.system(size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
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
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationStack
                {
                    NavigationLink("View Past Games") {
                        ResultsView()
                    }
                        .font(.system(size: 40))
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
