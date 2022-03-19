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
 //       NavigationView{
//            ZStack {
//                Color.white.edgesIgnoringSafeArea(.all)
//                ScrollView(.vertical) {
//                    CardList()
//                    TransactionsView()
//                }
//                //      .background(Color.white)
//                .navigationTitle(Text("My Card"))
//     //           .background(Color.yellow)
//            }
//        }
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
//
//struct CardList: View {
//    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            LazyHStack {
//                ForEach(0..<10, id: \.self) { item in
//                    CardView(isSelected: item == 0 )
//                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
//                }
//            }
//            .padding(20)
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
