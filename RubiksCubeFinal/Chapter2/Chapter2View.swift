//
//  Chapter2View.swift
//  RubiksCubeFinal
//
//  Created by Mario Swaidan on 11/27/23.
//

import SwiftUI

import SwiftUI

struct SolutionAlgorithm: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("First Layer")
                    .font(.largeTitle)
                Text("White Side up.\n\n(1)Solve Cross.\n\n(2)(R’D’R D) Put white corner piece flat on bottom under the upper corner you want to replace.")
                Text("\nSecondLayer")
                    .font(.largeTitle)
                Text("(1)Fill in corners.\n\n(2)Match non-yellow middle pieces on the third layer with the middle pieces of the second layer. They will need to be turned left or right to sit in place.\n\nLeft: U’ L’ U L U F U’ F’\n\nRight: U R U’ R’ U’ F’ U F")
                Text("\nThird Layer")
                    .font(.largeTitle)
                Text("Yellow Side up.\n\n(1)(FRU R’U’F’) Dot, L, Line, Cross. Put the “L” in upper left corner on top.\n\n(2)Line up third layer middle pieces with second layer middle pieces.\n\n(3)(RUR' URU UR'U) Two sides will match, right side and opposite of you. Algorithm will switch other middle third layer pieces to match the second layer middle piece.\n\n(4)(URU’ L’UR’ U’L) Find the correct corner, and use this algorithm once or twice to move the remaining corners to the right corner.\n\n(5)(R’D’R D)Put into the right corner an unsolved piece, then (U’) to the next unsolved corner.\n\nNotes: All cubes have three piece types: one sided stationary centerpieces, two sided middle pieces and three sided corner pieces. Layers are solved by completing a cross, then corners.")
            }.padding()
        }
    }
}
#Preview {
    SolutionAlgorithm()
}
