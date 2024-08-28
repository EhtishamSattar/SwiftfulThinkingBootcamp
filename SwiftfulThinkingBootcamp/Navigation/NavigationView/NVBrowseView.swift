import SwiftUI

struct NVBrowseView: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: NVFirstView(isActive: $isActive),
                    isActive: $isActive
                ) {
                    Text("Go to First View")
                }
            }
        }
    }
}

struct NVFirstView: View {
    @Binding var isActive: Bool
    @State private var isSecondActive: Bool = false

    var body: some View {
        VStack {
            NavigationLink(
                destination: NVSecondView(isActive: $isSecondActive),
                isActive: $isSecondActive
            ) {
                Text("Go to Second View")
            }
        }
        .navigationTitle("First View")
    }
}

struct NVSecondView: View {
    @Binding var isActive: Bool
    @State private var isThirdActive: Bool = false

    var body: some View {
        VStack {
            NavigationLink(
                destination: NVThirdView(isActive: $isThirdActive),
                isActive: $isThirdActive
            ) {
                Text("Go to Third View")
            }
        }
        .navigationTitle("Second View")
    }
}

struct NVThirdView: View {
    @Binding var isActive: Bool

    var body: some View {
        VStack {
            Text("Third View")
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .navigationTitle("Third View")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    // Reset navigation state to return to the initial view
                    isActive = false
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.blue)
                        .bold()
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    NVBrowseView()
}
