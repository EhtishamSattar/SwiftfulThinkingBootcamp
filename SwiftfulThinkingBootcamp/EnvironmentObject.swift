//
//  EnvironmentObject.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 12/08/2024.
//

import SwiftUI

class EnvironmentViewModel : ObservableObject {
    @Published var dataArray : [String] = []
    
    init(){
        getData()
    }
    func getData(){
        self.dataArray.append(contentsOf: ["Iphone","ipad","iMac","Apple Watch"])
    }
}

struct EnvironmentObjectView : View {
    @StateObject var viewModel : EnvironmentViewModel = EnvironmentViewModel()
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id : \.self){
                    item in
                    NavigationLink {
                        DetailView(selectedItem: item) // destination
                    } label: {
                        Text(item)
                    }

                }
            }
            .navigationTitle("IOS Devices")
            
        }
        .environmentObject(viewModel) // Setting Environment Object , this will give access of data by using @ENVIRONMENTOBJECT varibale in all subviews present in the List View 
    }
}
struct DetailView : View {
    let selectedItem: String
    //@ObservedObject var viewModel : EnvironmentViewModel
    
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            
            NavigationLink {
                //FinalView(viewModel: viewModel)
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }

        }
    }
}


struct FinalView : View {
    //@ObservedObject var viewModel : EnvironmentViewModel
    
    @EnvironmentObject var viewModel : EnvironmentViewModel
    
    var body : some View {
        ZStack{
            
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing
                    
                )
            .ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 20){
                    
                    ForEach(viewModel.dataArray, id: \.self){ item in
                        Text(item)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}
#Preview {
    EnvironmentObjectView()
}
