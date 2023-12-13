import SwiftUI

struct RainView: View {
    let numberOfDrops = 100
    private var offset1 = -700.0
    
    private var animation: Animation{
        .easeIn
        .speed(0.05)
        .repeatForever(autoreverses: false)
    }

    var body: some View {
        ZStack {
//            ForEach(0..<numberOfDrops) { index in
                RainDrop(imageName: "Cube")
//                    .offset(x: CGFloat(index) * 10, y: CGFloat(index) * 20)
//                    .animation(Animation.linear(duration: Double.random(in: 1.0...2.0)).repeatForever(autoreverses: false))
                
                
                
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct RainDrop: View {
    var imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 30, height: 30)
            .foregroundColor(.blue)
    }
}

struct Records: View {
    @State private var elapsedTime: TimeInterval = 0.0
    @State private var timer: Timer?
    @State private var records: [TimeInterval] = []
    @State private var isAnimating = false
    @State private var isFirstTime = true

    var body: some View {
        ZStack {
            VStack {
                Text(formatElapsedTime(time: elapsedTime))
                    .font(.title)
                    .padding()

                HStack {
                    Button("Start") {
                        startButtonTapped()
                    }
                    .padding()
                    .font(.headline)

                    Button("Stop") {
                        stopButtonTapped()
                    }
                    .padding()
                    .font(.headline)

                    Button("Reset") {
                        resetButtonTapped()
                    }
                    .padding()
                    .font(.headline)
                }

                List {
                    ForEach(records.reversed(), id: \.self) { record in
                        Text(formatElapsedTime(time: record))
                    }
                    .onDelete { indexSet in
                        deleteRecord(at: indexSet)
                    }
                }
            }

            if isAnimating {
                RainView()
            }
        }
        .onDisappear(perform: stopTimer)
    }

    func startButtonTapped() {
        if timer == nil {
            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
                updateTime()
            }

            if isFirstTime {
                startFallingAnimation()
                isFirstTime = false
            }
        }
    }

    func stopButtonTapped() {
        stopTimer()
        saveRecord()
        startFallingAnimation()
    }

    func resetButtonTapped() {
        elapsedTime = 0.0
    }

    func updateTime() {
        elapsedTime += 0.01
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }

    func saveRecord() {
        records.append(elapsedTime)
    }

    func deleteRecord(at offsets: IndexSet) {
        records.remove(atOffsets: offsets)
    }

    func formatElapsedTime(time: TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        let milliseconds = Int((time.truncatingRemainder(dividingBy: 1)) * 100)
        return String(format: "%02d:%02d.%02d", minutes, seconds, milliseconds)
    }

    func startFallingAnimation() {
        withAnimation {
            isAnimating = true
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            withAnimation {
                isAnimating = false
            }
        }
    }
}

struct Records_Previews: PreviewProvider {
    static var previews: some View {
        Records()
    }
}
