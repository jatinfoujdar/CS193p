import SwiftUI

struct ContentView: View {
    let emojis = ["🖖", "👎", "🫰🏼", "✋🏻","🖖", "👎", "🫰🏼", "✋🏻"]
    
    @State var CardCount = 4
    var body: some View {
        VStack{
        HStack {
                ForEach(0..<CardCount, id: \.self) { index in
                    CardView(content: emojis[index])
                }
            }
            HStack {
                Button("Add Cards"){
                    CardCount += 1;
                }
                Spacer()
                Button("Remove Cards"){
                    CardCount -= 1;
                 }
                .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct CardView: View {
    @State private var isFaceup = true
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
        .frame(width: 60, height: 60)  // Set a frame size for consistency
               .onTapGesture {
                   isFaceup.toggle()
               }
           }
       }

