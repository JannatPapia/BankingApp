//
//  CardScreen.swift
//  BankingApp
//
//  Created by Jannatun Nahar Papia  on 20/3/22.
//

import Foundation
import SwiftUI

struct CardsScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                ScrollView(.vertical) {
                    CardList()
                    TransactionsView()
                }
                .navigationTitle(Text("My Card"))
            }
        }
    }
}

