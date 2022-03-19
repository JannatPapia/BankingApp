//
//  TransastionsHeader.swift
//  BankingApp
//
//  Created by Jannatun Nahar Papia  on 19/3/22.
//

import Foundation
import SwiftUI

struct TransactionsHeader: View {
    var body: some View {
        HStack {
            Text("Send to money")
                .font(.headline)
            Spacer()
            Image(systemName: "plus.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 30, height: 30)
            Text("Add recipient")
                .font(.headline)
        }
        .padding()
        .padding(.bottom, 40)
        .foregroundColor(Color.white)
        .background(Color.black)
        .cornerRadius(20)
    }
}
