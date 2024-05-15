//
//  GolfView.swift
//  ScoreCard App
//
//  Created by Mateus Salomao on 5/1/24.
//
import SwiftUI

struct Hole: Identifiable {
    var id: Int
    var par: String = ""
    var strokes: String = ""
}

struct GolfView: View {
    @State private var holes = (1...18).map { Hole(id: $0) }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Golf Scorecard")
                    .frame(width: 300, height: 50)
                    .font(.largeTitle)
                List {
                    ForEach(holes) { hole in
                        HStack {
                            Text("Hole \(hole.id)")
                                .font(.headline)
                            Spacer()
                            TextField("Par", text: $holes[hole.id - 1].par)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                            TextField("Strokes", text: $holes[hole.id - 1].strokes)
                            //for each hole, a textfield is created that displays strokes as a placeholder when empty, and allows updates to the 'strokes' and into the 'holes' array
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                        }
                        .padding(.vertical, 5)
                    }
                }
            }
        }
    }
}


