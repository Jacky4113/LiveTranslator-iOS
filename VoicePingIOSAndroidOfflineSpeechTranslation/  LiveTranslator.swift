import SwiftUI

@main
struct LiveTranslatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var isTranslating = false
    @State private var subtitle = "English translation will appear here"

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Text("Live Translator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Spacer()

                Text(subtitle)
                    .font(.system(size: 28, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding()

                Spacer()

                Button {
                    isTranslating.toggle()
                } label: {
                    Text(isTranslating ? "Stop Translation" : "Start Translation")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(isTranslating ? Color.red : Color.blue)
                        .cornerRadius(14)
                }
            }
            .padding()
        }
    }
}
