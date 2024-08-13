import SwiftUI
struct NavigationsLearning: View {
  var body: some View {
    NavigationView {
      ZStack {
        LinearGradient(colors: [Color.cyan, Color.purple, Color.cyan], startPoint: .top, endPoint: .bottom)
          .edgesIgnoringSafeArea(.all)
        ScrollView {
          NavigationLink("Hello, World", destination: myOtherScreen())
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
          Text("Hello")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
          Text("Hello")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
          Text("Hello")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
      }
      .navigationTitle("All Inboxes")
      //.navigationBarTitleDisplayMode(.inline)
      // .navigationBarHidden(true)
      .navigationBarItems(leading:
                  HStack{
        Image(systemName: "flame.fill").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        Image(systemName: "person.fill").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
      },
                trailing:NavigationLink(
                  destination: myOtherScreen(),
                  label: {
                    Image(systemName: "gear").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                  })
      )
    }
  }
  struct myOtherScreen: View {
    var body: some View {
      ZStack
      {
        LinearGradient(colors: [Color.yellow, Color.black, Color.yellow], startPoint: .top, endPoint: .bottom)
          .edgesIgnoringSafeArea(.all)
      }
    }
  }
}
#Preview {
  NavigationsLearning()
}
