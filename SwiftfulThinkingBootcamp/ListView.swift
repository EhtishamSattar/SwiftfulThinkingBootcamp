//
//  ListView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 09/08/2024.
//

import SwiftUI

struct ListView: View {
    @State var fruits : [String] = ["Apple", "Mango","Banana"]
    @State var veggies: [String] = ["Tomato", "potato", "Carrot"]
    
    var body: some View {
        
        NavigationView {
            List{
                Section(header: Text("Fruits").foregroundStyle(Color.blue).bold()) {
                    ForEach(fruits, id: \.self){ fruit in
                        Text(fruit.capitalized)
                    }
                    //            .onDelete(perform: { indexSet in
                    //                fruits.remove(atOffsets: indexSet)
                    //            })
                    .onDelete(perform: delete)
                    //                .onMove(perform: { indices, newOffset in
                    //                    fruits.move(fromOffsets: indices , toOffset: newOffset)
                    //                })
                    .onMove(perform: move)
                    .swipeActions(edge: .trailing, allowsFullSwipe: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/){  // tutorial 58
                        Button("Archieve"){
                            
                        }
                        .tint(.green)
                        
                        Button("Save"){
                            
                        }
                        .tint(.blue)
                        Button("Junk"){
                            
                        }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/){  // tutorial 58
                        //.onDelete(perform: delete())
                    }
                }
                
                
                Section(header:  Text("Veggies").foregroundStyle(Color.blue).bold(), content: {
                    ForEach(veggies, id: \.self){ veggie in
                        Text(veggie.capitalized).foregroundStyle(.white).bold()
                    }
                    //            .onDelete(perform: { indexSet in
                    //                fruits.remove(atOffsets: indexSet)
                    //            })
                    .onDelete(perform: delete)
                    //                .onMove(perform: { indices, newOffset in
                    //                    fruits.move(fromOffsets: indices , toOffset: newOffset)
                    //                })
                    .onMove(perform: move)
                    .listRowBackground(Color.indigo)
                    
                })
            }
            //.listStyle(InsetListStyle()) Simple with no styling
            //.listStyle(GroupedListStyle()) // takes full width for rows
            //.listStyle(DefaultListStyle()) // by default this is the styling
            //.listStyle(PlainListStyle())  // 1,2,3 have color styling difference some time there is background color for section or not.
            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),
                                trailing: addButton)
        }
    }
    
    var addButton: some View {
        Button("Add", action: {
            //fruits.append("Coconut")
            add()
        })
    }
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
        veggies.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffSet: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffSet) // it is not working properly
        veggies.move(fromOffsets: indices, toOffset: newOffSet)
    }
    
    func add(){
        fruits.append("Coconut")
        veggies.append("Lady Finger")
    }
}
#Preview {
    ListView()
}
