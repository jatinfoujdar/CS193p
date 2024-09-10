import SwiftUI

struct ContentView: View {
    let emojis = ["🖖", "👎", "🫰🏼", "✋🏻"]
    
    var body: some View {
        HStack {
            ForEach(0..<emojis.count, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .padding()
        .imageScale(.large)
    }
}

#Preview {
    ContentView()
}

struct CardView: View {
    @State private var isFaceup = false
    let content: String
    
    var body: some View {
        let base = RoundedRectangle(cornerRadius: 10)
        ZStack {
            if isFaceup {
                base
                    .fill(Color.white)
                    .overlay(base.strokeBorder(Color.black, lineWidth: 2))
                Text(content)
                    .foregroundStyle(.tint)
            } else {
                base.fill(Color.orange)
            }
        }
        .onTapGesture {
            isFaceup.toggle()
        }
    }
}
