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
                
            }
        }
    }
}

struct TransactionRow: View {
    var body: some View {
        HStack {
            Image("visa")
            VStack {
                Text("Dribble")
                Text("12 Nov 2020 11: 08")
            }
            Spacer()
            Text("-$60.0")
        }
    }
}
