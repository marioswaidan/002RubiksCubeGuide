import SwiftUI

struct FunAlgorithms: View {
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    NavigationLink(destination: DetailView(imageName: "Cube 1", algorithm: "R'D'R D")) {
                        Image("Cube 1")
                            .resizable()
                            .scaledToFit()
                    }
                    NavigationLink(destination: DetailView(imageName: "Cube 2", algorithm: "R'D'R D")) {
                        Image("Cube 2")
                            .resizable()
                            .scaledToFit()
                    }
                }
                HStack {
                    NavigationLink(destination: DetailView(imageName: "Cube 3", algorithm: "R'D'R D")) {
                        Image("Cube 3")
                            .resizable()
                            .scaledToFit()
                    }
                    NavigationLink(destination: DetailView(imageName: "Cube 4", algorithm: "R'D'R D")) {
                        Image("Cube 4")
                            .resizable()
                            .scaledToFit()
                    }
                }
                HStack {
                    NavigationLink(destination: DetailView(imageName: "Cube 5", algorithm: "R'D'R D")) {
                        Image("Cube 5")
                            .resizable()
                            .scaledToFit()
                    }
                    NavigationLink(destination: DetailView(imageName: "Cube 6", algorithm: "R'D'R D")) {
                        Image("Cube 6")
                            .resizable()
                            .scaledToFit()
                    }
                }
                HStack {
                    NavigationLink(destination: DetailView(imageName: "Cube 7", algorithm: "R'D'R D")) {
                        Image("Cube 7")
                            .resizable()
                            .scaledToFit()
                    }
                    NavigationLink(destination: DetailView(imageName: "Cube 8", algorithm: "R'D'R D")) {
                        Image("Cube 8")
                            .resizable()
                            .scaledToFit()
                    }
                }
                HStack {
                    NavigationLink(destination: DetailView(imageName: "Cube 9", algorithm: "R'D'R D")) {
                        Image("Cube 9")
                            .resizable()
                            .scaledToFit()
                    }
                    NavigationLink(destination: DetailView(imageName: "Cube 10", algorithm: "R'D'R D")) {
                        Image("Cube 10")
                            .resizable()
                            .scaledToFit()
                    }
                }
                HStack {
                    NavigationLink(destination: DetailView(imageName: "Cube 11", algorithm: "R'D'R D")) {
                        Image("Cube 11")
                            .resizable()
                            .scaledToFit()
                    }
                    NavigationLink(destination: DetailView(imageName: "Cube 12", algorithm: "R'D'R D")) {
                        Image("Cube 12")
                            .resizable()
                            .scaledToFit()
                    }
                }
                HStack {
                    NavigationLink(destination: DetailView(imageName: "Cube 13", algorithm: "R'D'R D")) {
                        Image("Cube 13")
                            .resizable()
                            .scaledToFit()
                    }
                    NavigationLink(destination: DetailView(imageName: "Cube 14", algorithm: "R'D'R D")) {
                        Image("Cube 14")
                            .resizable()
                            .scaledToFit()
                    }
                }
                // Add more rows of images using NavigationLink as needed
            }
            .padding()
            .navigationBarTitle("Image Gallery")
        }
    }
}

struct DetailView: View {
    var imageName: String
    var algorithm: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .navigationBarTitle(imageName)
        Text(algorithm)
            .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


#Preview {
    FunAlgorithms()
}

