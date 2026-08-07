import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: "fork.knife.circle")
                .font(.system(size: 48))
                .foregroundStyle(.tint)
            Text("Meelyze")
                .font(.largeTitle)
                .bold()
                .accessibilityIdentifier("AppTitleLabel")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
