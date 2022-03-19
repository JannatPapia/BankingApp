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
        // header
        
        VStack(spacing: -40) {
            TransactionsHeader()
//            HStack {
//                Text("Send to money")
//                    .font(.headline)
//                Spacer()
//                Image(systemName: "plus.circle.fill")
//                    .resizable()
//                    .foregroundColor(.blue)
//                    .frame(width: 30, height: 30)
//                Text("Add recipient")
//                    .font(.headline)
//            }
//            .padding()
//            .padding(.bottom, 40)
//            .foregroundColor(Color.white)
//            .background(Color.black)
//            .cornerRadius(20)
     //       .offset(x: 0, y: 10)
        LazyVStack {
            ForEach(0..<10, id: \.self) { item in
                TransactionRow()
            }
        }
        .background(Color.white)
        .cornerRadius(20)
        }
        .padding(.horizontal)
    }
}

//struct TransactionsHeader: View {
//    var body: some View {
//        HStack {
//            Text("Send to money")
//                .font(.headline)
//            Spacer()
//            Image(systemName: "plus.circle.fill")
//                .resizable()
//                .foregroundColor(.blue)
//                .frame(width: 30, height: 30)
//            Text("Add recipient")
//                .font(.headline)
//        }
//        .padding()
//        .padding(.bottom, 40)
//        .foregroundColor(Color.white)
//        .background(Color.black)
//        .cornerRadius(20)
//    }
//}
//
//struct TransactionRow: View {
//    var body: some View {
//        HStack {
//            Image("visa")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 30, height: 30)
//                .padding(5)
//            VStack(alignment: .leading) {
//                Text("Dribble")
//                    .font(.headline)
//                Text("12 Nov 2020 11: 08")
//                    .font(.caption)
//                    .foregroundColor(Color(.secondaryLabel))
//            }
//            Spacer()
//            Text("-$60.0")
//                .font(.headline)
//        }
//        .padding(8)
//    }
//}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
            .previewLayout(.sizeThatFits)
    }
}
