import SwiftUI

struct CheckView2: View {
    let newspaperNames = [
        "The New York", "The Washington Post", "The Daily Telegraph", "The Los Angeles",
        "The Chicago Tribune", "USA Today Express", "The Times Herald", "The Hindu Express",
        "The Sydney Herald", "The Globe Daily", "The Boston Globe", "The Denver Post",
        "Houston Chronicle Times", "The Dallas News", "San Francisco Chronicle",
        "The Seattle Times", "The Tampa Bay", "The Detroit Free", "The Kansas City",
        "The Oregonian Times", "The Baltimore Sun", "The Atlanta Journal",
        "The St. Louis", "The Plain Dealer", "The San Diego", "The Arizona Republic",
        "Las Vegas Review", "The Cincinnati Enquirer", "Orlando Sentinel News",
        "The Miami Herald", "The Daily Mail", "The New Yorker", "The Wall Street",
        "The Charlotte Observer", "The Financial Times", "The Toronto Star",
        "The Sunday Times", "The Irish Times", "The Daily Beast", "The Sunday Herald",
        "The Tribune Times", "The Express Tribune", "The Morning Call",
        "The News Times", "The Evening Standard", "The Star Ledger",
        "The Courier Mail", "The West Australian", "The Mercury News",
        "The Herald Sun", "The Telegraph News"
    ]

    var body: some View {
        VStack(spacing: 20) {
            ScrollView {
                VStack {
                    ForEach(newspaperNames, id: \.self) { name in
                        Text(name)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical, 5)
                    }
                }
                .frame(height: 300)  // Giving it a fixed height for scrolling
            }

            ScrollView {
                LazyVStack {
                    ForEach(newspaperNames, id: \.self) { name in
                        Text(name)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical, 5)
                    }
                }
                .frame(height: 300)  // Giving it a fixed height for scrolling
            }

            List {
                ForEach(newspaperNames, id: \.self) { name in
                    Text(name)
                }
            }
            .listStyle(SidebarListStyle())
            .frame(height: 300)  // Giving it a fixed height for scrolling
        }
        .onAppear {
            print("View 2")
        }
    }
}

#Preview {
    CheckView2()
}
