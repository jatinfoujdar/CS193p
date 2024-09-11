import SwiftUI

struct SwiftUIView: View {
    let emojis = ["🐙", "🐵", "🐒", "🦍", "🦧", "🐶", "🐕"]
    
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
                    ForEach(emojis, id: \.self) { emoji in
                        CardViews(content: emoji)
                    }
            }
            
            Spacer()
            
            // Footer
            HStack {
                Image(systemName: "globe")
                    .font(.title)
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: "car")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
            }
            .padding()
        }
    }
}

struct CardViews: View {
    let content: String
    
    var body: some View {
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
            .frame(width: 100, height: 100) // Adjust size as needed
    }
}

#Preview {
    SwiftUIView()
}
