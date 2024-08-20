import SwiftUI

struct CheckOnAppear: View {
    var body: some View {
        ScrollView {
            
            CheckView1()
            //CheckView2()
            
            
            
//            VStack{
//                ForEach(0..<50) { Int in
//                    textView()
//                }
//            }
//            .onAppear(perform: {
//                print("LazyVStack")
//            })
            
            
            CheckView3()
            // Adding some padding to the content
        }
        
        List{
            ForEach(0..<50) { Int in
                textView()
            }
        }
    }
}

#Preview {
    CheckOnAppear()
}
