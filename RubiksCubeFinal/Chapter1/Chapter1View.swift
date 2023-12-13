import SwiftUI

struct CubeNotation: View {
    var body: some View {
        ScrollView{
            Image("cube")
                .resizable()
                .scaledToFit()
                .frame(width: 350)
            
            Text("Cube Notation")
                .font(.largeTitle)
                .padding()
            Text("Cube notation is a standardized way of representing moves and rotations for a Rubik's Cube or similar twisty puzzle. It is commonly used by speedcubers and puzzle enthusiasts to communicate algorithms and sequences of moves. The notation consists of letters that represent the face of the cube to turn and additional symbols to indicate the direction of the turn.\n\nHere are the basic symbols used in cube notation:")
            Text("(1) Face Notation:\n U Up\n D  Down\n L  Left\n R  Right\n F Front\n B Back")
                .font(.headline)
             Text("\n\n(2) Direction Notation: Clockwise (90 degrees): No symbol or a single letter represents a clockwise turn of the specified face by 90 degrees.\n\nCounterclockwise (90 degrees): ' (apostrophe) after the face letter represents a counterclockwise turn of the specified face by 90 degrees. \nNegative 180 degrees: Negative 2 after the face letter represents a 180 degree turn of the specified face.\n\nHere are a few examples to illustrate cube notation:")
            Text("\nU: Turn the top face clockwise by 90 degrees.\nU': Turn the top face counterclockwise by 90 degrees.\nU2: Turn the top face by 180 degrees.\nR: Turn the right face clockwise by 90 degrees.\nR': Turn the right face counterclockwise by 90 degrees.\nR2: Turn the right face by 180 degrees.\nF: Turn the front face clockwise by 90 degrees.\nF': Turn the front face counterclockwise by 90 degrees.\nF2: Turn the front face by 180 degrees.")
                .font(.headline)
            Text("\n\nRemember, these notations apply similarly to the other faces (D, L, B). Additionally, you can combine multiple moves into an algorithm to solve specific patterns or configurations on the cube.\n\n For more advanced users, there are also wide move notations (e.g., Rw, Uw) and slice move notations (e.g., M, E, S), which involve turning multiple layers at once. These notations are often used in more complex algorithms.\n\n Learning cube notation can be a key aspect of learning advanced solving methods and algorithms for the Rubik's Cube. Practice and familiarity with these notations will make it easier to follow and memorize sequences of moves.")
            }.padding()


        }
    }
#Preview {
    CubeNotation()
}
