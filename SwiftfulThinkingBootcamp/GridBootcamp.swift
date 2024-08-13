//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 08/08/2024.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        //        GridItem(.fixed(60), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(60), spacing: nil, alignment: nil),
        
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        
        //        GridItem(.adaptive(minimum: 10, maximum: 100), spacing: nil, alignment: nil), // 1st Column
        //        GridItem(.adaptive(minimum: 100, maximum: 200), spacing: nil, alignment: nil), // 2nd Column
        //
    ]
    
    let url = URL(string: "https://picsum.photos/300")
    
    var body: some View {
        
        
        
        
        ZStack{
            
            //Color.blue.ignoresSafeArea()
            
            ScrollView{
                
                
                VStack{
                    Rectangle().fill(
                        RadialGradient(
                            colors: [Color.purple, Color.pink, Color.red, Color.yellow],
                            center: .bottomLeading, startRadius: 40,
                            endRadius: 700
                        )
                    )
                    .frame(width: .infinity, height: 400, alignment: .topLeading)
                    .overlay{
                        AsyncImage(url: url, content: { Image in
                            Image
                                .resizable()
                        
                        }, placeholder: {  // if the oicture is still loading it will display a progresssbar
                            ProgressView()
                        })
                    }
                    
                    LazyVGrid(
                        columns: columns,
                        alignment: .center,
                        spacing: 6,
                        pinnedViews: [.sectionHeaders],
                        content: {
                            Section(header: ZStack {
                                Text("Posts")
                                    .padding()
                                    .foregroundColor(.black)
                                    .bold()
                                    .font(.title)
                                    .frame(maxWidth: .infinity ,alignment: .leading)
                                .background(Color.white)
                            }
                                
                            ) {
                                ForEach(0..<20) {index in
                                    Rectangle()
                                        .frame(height: 150)
                                        .padding(.horizontal, 1)
                                        .overlay{
//                                            Image("picture")
//                                                .resizable()
                                            
                                            //Feature in IOS 15 and above
                                            AsyncImage(url: url, content: { Image in
                                                Image
                                                    .resizable()
                                            
                                            }, placeholder: {
                                                ProgressView()
                                            })

                                        }
                                }
                            }
                            
                        })
                }
                
                
                
            }
            .frame(maxWidth: .infinity, maxHeight : .infinity, alignment: .center)
            //.safeAreaInset(edge: .top, content: nil)
            
            
        }
        //.edgesIgnoringSafeArea(.all)
        
    }
}
#Preview {
    GridBootcamp()
}
