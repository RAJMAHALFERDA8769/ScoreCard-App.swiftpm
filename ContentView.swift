import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("KeepScore")
                    .font(.system(size: 80))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 100)
                
                Spacer()
                
                Button(action: {
                }) {
                    Text("Scoreboard")
                        .font(.system(size: 40))
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(10)
                }
                .padding(.bottom, 20)
                
                Button(action: {
                }) {
                    Text(" Statistics    ")
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
