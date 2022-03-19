//
//  ContentView.swift
//  BankingApp
//
//  Created by Jannatun Nahar Papia  on 19/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CardsScreen()
                .tabItem { Label("Home", systemImage: "house") }
            VStack {}
            .tabItem { Label("Statistic", systemImage: "table") }
            VStack {}
            .tabItem { Label("Wallet", systemImage: "dollarsign.square") }
            VStack {}
            .tabItem { Label("Profile", systemImage: "person") }
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
