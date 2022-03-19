//
//  TransactionView.swift
//  BankingApp
//
//  Created by Jannatun Nahar Papia  on 19/3/22.
//

import Foundation
import SwiftUI

struct TransactionsView: View {
    var body: some View {
        LazyVStack {
            ForEach(0..<10, id: \.self) { item in
                TransactionRow()
            }
        }
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
                Text("12 Nov 2020 11: 08")
                    .font(.caption)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            Text("-$60.0")
                .font(.headline)
        }
        .padding(8)
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
            .previewLayout(.sizeThatFits)
    }
}
