import SwiftUI

struct NavigationSplitView2: View  {
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit : Fruit? = nil

    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            List {
                ForEach(FoodCategory.allCases, id: \.rawValue) { category in
                    Button(category.rawValue.capitalized) {
                        selectedCategory = category
                    }
                }
            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory {
                Group {
                    switch selectedCategory { 
                    case .fruits:
                        List {
                            ForEach(Fruit.allCases, id: \.rawValue) { fruit in
                                Button(fruit.rawValue.capitalized) {
                                    selectedFruit = fruit
                                }
                            }
                        }
                    case .vegetables:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else {
                Text("Select a category to begin")
            }
        } detail: {
            if let selectedFruit {
                Text("You Selected: \(selectedFruit.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            } else {
                Text("Select Something")
            }
        }
    }
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegetables, meats
}

enum Fruit: String, CaseIterable {
    case apple, mango, banana
}

#Preview {
    NavigationSplitView2()
}
