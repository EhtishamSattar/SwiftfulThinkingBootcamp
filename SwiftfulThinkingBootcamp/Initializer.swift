//
//  Initializer.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 07/08/2024.
//

import SwiftUI

struct Initializer: View {
    
    //var backgroundColor: Color = Color.red  // IN CASE OF DEFAULT value it will give no initializer error in line 27
    
    var backgroundColor: Color // Error in line 27 if there will be no initialization happenns
    
    var text: String = ""
    
    let count: Int = 25
    
    // Manaual implementwtion of Member wise initializer , Swift infers its itself if we dont provide it ourselves
    init(backgroundColor: Color){
        self.backgroundColor = backgroundColor
    }
    
    init(helloworld: HelloWorld){
        if helloworld == .hello {
            text = "Hello there :)"
            backgroundColor = Color.indigo
        }else {
            text = "World Champion"
            backgroundColor = Color.blue
        }
    }
    
    enum HelloWorld {
        case hello
        case world
    }
    
    var body: some View {
        VStack{
            Text("\(text) : \(count)")
                .foregroundColor(Color.white)
                .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(backgroundColor)
                .cornerRadius(10)
                .font(.title3)
                .bold()
        }
        
    }
}

#Preview {
    //Initializer(backgroundColor: .green)
    VStack{
        Initializer(helloworld: .world)
        Initializer(helloworld: .hello)
    }
    
    
    //We can also use Stacks here
}
