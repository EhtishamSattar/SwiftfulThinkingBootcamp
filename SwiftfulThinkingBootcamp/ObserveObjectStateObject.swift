//
//  ObserveObjectStateObject.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 12/08/2024.
//

import SwiftUI

struct FruitModel : Identifiable {
    let id: String = UUID().uuidString
    let name : String
    let count : Int
}

class FruitViewModel : ObservableObject {
//    When you mark a property with @Published, any changes to that property will automatically trigger notifications to any subscribers. This is particularly useful in SwiftUI for updating the UI when the underlying data changes.
    @Published var fruitArray : [FruitModel] = []
    @Published var isLoading : Bool = false
    
    
    init(){
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Apple", count: 1)
        let fruit2 = FruitModel(name: "Mango", count: 4)
        let fruit3 = FruitModel(name: "Orange", count: 2)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(index: IndexSet)
    {
        fruitArray.remove(atOffsets: index)
    }
    
}

struct ObserveObjectStateObject: View {
    //@ObservedObject var fruitViewModel : FruitViewModel = FruitViewModel() // Use this for Sub Views
    
    @StateObject var fruitViewModel : FruitViewModel = FruitViewModel() // USE THIS ON CREATION / INITIALIZATION
    
    var body: some View {
        NavigationView{ //Navigation View Start
            
            List{ // FruitArray list start
                if fruitViewModel.isLoading {
                    ProgressView()
                }else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                            
                        }
                        
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                
                
            } //FruitArray list end
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit list")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel),
                                                   label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            })
            )
//            .onAppear{    // we removed this because we have now made our Initializer in the class
//                fruitViewModel.getFruits()
//            }
            
        } //Navigation view End
        
        
        
    }
}
struct RandomScreen : View{
    @Environment(\.presentationMode) var mode
    @ObservedObject var fruitViewModel : FruitViewModel
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
            
            VStack{
                ForEach(fruitViewModel.fruitArray){ fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    
                    Text("Go Back")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                }
            }
            
            

            
        }
    }
}
#Preview {
    ObserveObjectStateObject()
}
