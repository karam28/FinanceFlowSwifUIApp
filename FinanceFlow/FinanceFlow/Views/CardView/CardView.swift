//
//  CardView.swift
//  FinanceFlow
//
//  Created by Karamjeet Singh on 27/06/24.
//

import SwiftUI

struct CardView: View {
    
    @State var isSelected : Bool = true
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Image("visa") // Set Logo
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 20)
                    .padding(3)
                    .foregroundColor(isSelected ? .white : .black)
                    .cornerRadius(5)
            }
            Text("Balance")
                .foregroundColor(isSelected ? .white : .black)
                .font(.body)
                .padding(.bottom)

            HStack {
                Text("USD")
                    .foregroundColor(isSelected ? .white : .black)
                    .font(.caption)

                Text("$17,170.00")
                    .foregroundColor(isSelected ? .white : .black)
                    .font(.headline)
            }
            .padding(.bottom)
            Spacer()
            Text("**** **** **** 2342")
                .foregroundColor(isSelected ? .white : .black)
                .font(.caption)
                .padding(.bottom)

            Spacer()

        }
        .frame(width: 130, height: 150)
        .padding(8)
        .background(isSelected ? .blue : .white)
        .cornerRadius(20)

    }
}

#Preview {
    CardView()
}
