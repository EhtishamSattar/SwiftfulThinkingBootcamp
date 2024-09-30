import SwiftUI

// Custom container view that accepts multiple views using @ViewBuilder
struct CustomContainer<Content: View>: View {
    let content: Content
    
    // Using @ViewBuilder to allow multiple views in the closure
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            Text("Header")
                .font(.headline)
            
            Divider()
            
            content
            
            Divider()
            
            Text("Footer")
                .font(.caption)
        }
        .padding()
        .border(Color.gray)
    }
}

struct MyViewBuilderExample: View {
    var body: some View {
        CustomContainer {
            // Multiple views inside the container, thanks to @ViewBuilder
            Text("This is the first text")
            Text("This is the second text")
            Button("Click me") {
                print("Button clicked!")
            }
        }
    }
}

#Preview {
    MyViewBuilderExample()
}
