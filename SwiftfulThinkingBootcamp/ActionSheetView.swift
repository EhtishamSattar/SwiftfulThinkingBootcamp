//
//  ActionSheetView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 09/08/2024.
//

import SwiftUI

enum typeOfActionSheet {
    case type1
    case type2
}

struct ActionSheetView: View {
    
    @State var showSheet : Bool = false
    @State var typeone : Bool = false
    @State var typetwo : Bool = false
    @State var actionSheetType : typeOfActionSheet = .type1
    @State var backgroundColor: Color = .white
    
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width:30, height:30)
                Text("Ehtisham123")
                
                Spacer()
                
                Button(action:{
                    //showSheet.toggle()
                    typeone.toggle()
                    actionSheetType = .type1
                } ,label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.blue)
                })
                .accentColor(.primary)
                
                Button(action:{
                    //showSheet.toggle()
                    typetwo.toggle()
                    actionSheetType = .type2
                } ,label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.blue)
                })

                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0,contentMode: .fit)
                .overlay{
                    Image("picture")
                        .resizable()
                }
            
        
        }
        .actionSheet(isPresented: typeone ? $typeone : $typetwo, content: {
            getActionSheet(actionSheet: actionSheetType)

        })
        .contextMenu(menuItems: {
            
            Button(action:{
                backgroundColor = .yellow
            }, label: {
                Text("Report Post")
            })
            
            Button(action:{
                backgroundColor = .green
            }, label: {
                Text("Share Post")
            })
            
            Button(action:{
                backgroundColor = .red
            }, label: {
                Text("Delete Post")
            })
            
            Button(action:{
                backgroundColor = .white
            }, label: {
                Text("Leave Post")
            })
        
        })
        .background(backgroundColor)
        //.padding()
        
    }
    
    
    
    func getActionSheet(actionSheet: typeOfActionSheet) -> ActionSheet{
        //return ActionSheet(title: Text("This is Action SHeet"))
        
        let button1 : ActionSheet.Button = .default(Text("Button One")){
            // add code to perform relevent action
        }
        let button2 : ActionSheet.Button = .destructive(Text("Button Two"))
        let button3 : ActionSheet.Button = .cancel(Text("Button Three"))
        
        
        let button4 : ActionSheet.Button = .default(Text("Button Four")){
            // add code to perform relevent action
        }
        let button5 : ActionSheet.Button = .destructive(Text("Button Five"))
        let button6 : ActionSheet.Button = .cancel(Text("Button Six"))
        
        
        switch actionSheet {
        case .type1:
            return ActionSheet(title: Text("Action Sheet tutorial "), message: Text("This is action sheet type 1 popover"), buttons: [button1,button2, button3])
            
                
        case .type2:
            return ActionSheet(title: Text("Action Sheet tutorial "), message: Text("This is action sheet type 2 popover"), buttons: [button4,button5, button6])
//        default:
//            return ActionSheet(title: Text("Action Sheet tutorial "), message: Text("This is action sheet popover"))
        }
        
        
    }
}

#Preview {
    ActionSheetView()
}
