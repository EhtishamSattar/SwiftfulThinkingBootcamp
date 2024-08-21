import SwiftUI

struct AnotherBrowseView: View {
    @StateObject var navigationManager = NavigationManager()
    
    var body: some View {
        NavigationStack(path: $navigationManager.path) {
            Button {
                navigationManager.path.append(.home)
            } label: {
                Text("Navigate to Home View")
            }
            .navigationDestination(for: Screen.self) { screen in
                switch screen {
                case .home:
                    AnotherHomeView()
                        //.environmentObject(navigationManager)
                case .detail:
                    Button(action: {
                        navigationManager.path.append(.settings)
                    }, label: {
                        Text("Navigate to Settings View")
                    })
                case .settings:
                    SettingsView()
                }
            }
        }
        .environmentObject(navigationManager)
    }
}

struct AnotherHomeView: View {
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        Button {
            navigationManager.path.append(.detail)
        } label: {
            Text("Navigate to Detail View")
        }
    }
}


struct SettingsView: View {
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        VStack {
            Text("Settings View")
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .navigationTitle("Seetings")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    navigationManager.path.removeLast(2)
                    //navigationManager.path.removeAll()
                    
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
    AnotherBrowseView()
}
