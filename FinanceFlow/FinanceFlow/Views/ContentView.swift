//
//  ContentView.swift
//  FinanceFlow
//
//  Created by Karamjeet Singh on 27/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CardViewScreen()
                .tabItem { Label("Home", systemImage: "house") }
            VStack{}
                .tabItem { Label("Wallet", systemImage: "wallet.pass.fill") }
            VStack{}
                .tabItem { Label("Statistic", systemImage: "table") }
            VStack{}
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

struct CardList: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(0..<5, id: \.self) { item in
                    CardView(isSelected: item == 0)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: 5, x: 5, y: 5)
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    ContentView()
}
