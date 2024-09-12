import SwiftUI

struct SwiftUIView: View {
    let emojis = ["🐙", "🐵", "🐒", "🦍", "🦧", "🐶", "🐕"]
    @State var cardCounts = 4
    var body: some View {
        VStack {
            // Title
            HStack {
                Text("Memorize!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            .padding()
            
            // Cards
           
            LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]){
                ForEach(0..<cardCounts, id: \.self) {  index in
                    CardViews(content: emojis[index % emojis.count])
                    }
            }
            
            Spacer()
            
            // Footer
            HStack {
                Button("Add"){
                    cardCounts += 1
                }
                    .font(.title)
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button("Minus"){
                    if(cardCounts > 0){
                        cardCounts -= 1
                    }
                }
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
            }
            .padding()
        }
    }
}

struct CardViews: View {
    @State private var isFaceUp = true
    let content: String
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.orange)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder(Color.black, lineWidth: 2)
                    )
                    .overlay(
                        Text(content)
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    )
                    
            } else {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.red) // Add a fill color to the back of the card
                
            }
        }    .frame(width: 100, height: 100)
            .onTapGesture {
                isFaceUp.toggle()
            }
    }
}


#Preview {
    SwiftUIView()
}
