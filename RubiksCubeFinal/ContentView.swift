//
//  ContentView.swift
//  RubiksCubeFinal
//
//  Created by Mario Swaidan on 11/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CubeNotation()
                .tabItem {
                    Label("Cube Notation", systemImage: "abc")
                }
            SolutionAlgorithm()
                .tabItem {
                    Label("Solution Algorithm", systemImage: "key.fill")
                }
            FunAlgorithms()
                .tabItem {
                    Label("Fun Algorithms", systemImage: "rectangle.checkered")
                }
            History()
                .tabItem {
                    Label("History", systemImage: "book")
                }
            Records()
                .tabItem {
                    Label("Records", systemImage: "book.pages.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}

#Preview {
    ContentView()
}
