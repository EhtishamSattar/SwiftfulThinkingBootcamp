import SwiftUI

struct ContentView22: View {
    @State private var isDetailViewActive: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: DetailView2(),
                    isActive: $isDetailViewActive
                ) {
                    Text("Go to Detail View")
                }
                .padding()
                
                Button("Toggle Detail View") {
                    isDetailViewActive.toggle()
                }
                .padding()
            }
            .navigationTitle("Home View")
        }
    }
}

struct DetailView2: View {
    var body: some View {
        Text("Detail View")
            .font(.largeTitle)
            .padding()
            .navigationTitle("Detail View")
    }
}

#Preview {
    ContentView22()
}
