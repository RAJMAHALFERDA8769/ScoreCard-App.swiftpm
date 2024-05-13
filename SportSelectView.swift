
import Foundation
import SwiftUI

struct SportSelectView: View {
    var body: some View {
        VStack {
            HStack{
                NavigationLink("Basketball") {
                    TeamView()
                }
                .font(.system(size: 40))
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
                .cornerRadius(10)
                
                .padding(.bottom, 20)
                
                NavigationLink("Golf") {
                    GolfView()
                }
                .font(.system(size: 40))
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .cornerRadius(10)
                
                .padding(.bottom, 20)
                
            }
            HStack{
                NavigationLink("Soccer") {
                    SoccerView()
                }
                .font(.system(size: 40))
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                
                .padding(.bottom, 20)
                
                NavigationLink("Baseball") {
                    BaseballView()
                }
                .font(.system(size: 40))
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .cornerRadius(10)
                
                .padding(.bottom, 20)
            }
            HStack{
                NavigationLink("Cricket") {
                    CricketView()
                }
                .font(.system(size: 40))
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.brown)
                .cornerRadius(10)
                
                .padding(.bottom, 20)
               
            }
            
        }
                
            }
        }

    

