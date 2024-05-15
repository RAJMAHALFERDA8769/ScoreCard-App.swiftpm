import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Spacer()
                Text("KeepScore")
                    .font(.system(size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(.top, 100)
                
                Spacer()
                
                NavigationStack
                {
                    NavigationLink("Scorecard") {
                        SportSelectView()
                    }
                    .font(.system(size: 40))
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    
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
            }
                Spacer()
            }
            }
        }
