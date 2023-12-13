import SwiftUI

struct Chapter2View: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)], spacing: 16) {
                    NavigationLink(destination: DetailView(religionName: "Zoroastrianism")) {
                        ReligionRow(imageName: "Zoroastrianism", religionName: "Zoroastrianism")
                    }
                    NavigationLink(destination: DetailView(religionName: "Hinduism")) {
                        ReligionRow(imageName: "hindu", religionName: "Hinduism")
                    }
                    NavigationLink(destination: DetailView(religionName: "Judaism")) {
                        ReligionRow(imageName: "judaism", religionName: "Judaism")
                    }
                    NavigationLink(destination: DetailView(religionName: "Jainism")) {
                        ReligionRow(imageName: "jainism", religionName: "Jainism")
                    }
                    NavigationLink(destination: DetailView(religionName: "Christianity")) {
                        ReligionRow(imageName: "christian", religionName: "Christianity")
                    }
                    NavigationLink(destination: DetailView(religionName: "Buddhism")) {
                        ReligionRow(imageName: "buddhism", religionName: "Buddhism")
                    }
                    NavigationLink(destination: DetailView(religionName: "Islam")) {
                        ReligionRow(imageName: "islam", religionName: "Islam")
                    }
                    NavigationLink(destination: DetailView(religionName: "Sikhism")) {
                        ReligionRow(imageName: "sikh", religionName: "Sikhism")
                    }
                    NavigationLink(destination: DetailView(religionName: "Baha'i")) {
                        ReligionRow(imageName: "bahai", religionName: "Baha'i")
                    }
                    NavigationLink(destination: DetailView(religionName: "Confucianism")) {
                        ReligionRow(imageName: "confucianism", religionName: "Confucianism")
                    }
                    NavigationLink(destination: DetailView(religionName: "Native Spirituality")) {
                        ReligionRow(imageName: "native", religionName: "Native Spirituality")
                    }
                    NavigationLink(destination: DetailView(religionName: "Shinto")) {
                        ReligionRow(imageName: "shinto", religionName: "Shinto")
                    }
                    // Add more NavigationLinks for other religions as needed
                }
                .padding()
            }
            .navigationBarTitle("Religions")
        }
    }
}

struct ReligionRow1: View {
    let imageName: String
    let religionName: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 130)
            Text(religionName)
                .font(.headline)
        }
        .padding()
    }
}

struct DetailView2: View {
    let religionName: String

    var body: some View {
        VStack {
            Text("\(religionName)")
                .font(.title)
                .padding()
            // Add more details as needed
        }
    }
}

struct Chapter2View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter1View()
    }
}
