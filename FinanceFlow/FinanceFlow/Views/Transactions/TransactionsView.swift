//
//  TransactionsView.swift
//  FinanceFlow
//
//  Created by Karamjeet Singh on 27/06/24.
//

import SwiftUI

struct TransactionsView: View {
    var body: some View {
        
        VStack(spacing: -20) {
            TransactionHeaderView()
            
            LazyVStack {
                ForEach(0..<10, id: \.self) { item in
                    TransactionRow()
                }
            }
            .background(.white)
            .cornerRadius(20)
        }
        .padding(.horizontal)
        
    }
}

struct TransactionHeaderView: View {
    var body: some View {
        HStack {
            Text("Send to money")
                .font(.headline)
            Spacer()
            Image(systemName: "plus.circle.fill")
                .foregroundColor(.blue)
            Text("Add receipent")
                .font(.headline)
        }
        .padding(20)
        .padding(.bottom, 30)
        .foregroundColor(.white)
        .background(.black)
        .cornerRadius(20)
        .offset(x:0, y:10)
    }
}
struct TransactionRow: View {
    var body: some View {
        HStack {
            Image("visa")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .padding(5)
            VStack(alignment: .leading) {
                Text("Dribble")
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("12 Nov 2024 11:00")
                    .font(.caption)
                    .foregroundColor(Color(.secondaryLabel))
                
            }
            Spacer()
            Text("-$60.9")
                .font(.headline)
        }
        .padding()
    }
}


#Preview {
    TransactionsView()
}
