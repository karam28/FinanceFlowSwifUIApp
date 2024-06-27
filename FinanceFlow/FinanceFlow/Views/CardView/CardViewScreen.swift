//
//  CardViewScreen.swift
//  FinanceFlow
//
//  Created by Karamjeet Singh on 27/06/24.
//

import SwiftUI

struct CardViewScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.white).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ScrollView(.vertical) {
                    CardList()
                    TransactionsView()
                }
                .navigationTitle(Text("My Card"))
            }
        }
    }
}

#Preview {
    CardViewScreen()
}
