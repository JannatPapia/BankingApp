//
//  CardView.swift
//  BankingApp
//
//  Created by Jannatun Nahar Papia  on 19/3/22.
//

import Foundation
import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Image("visa") // logo
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 20)
                    .padding(3)
                    .background(Color.pink)
                    .cornerRadius(5)

            }
            Text("Balance")
                .font(.caption)
                HStack{
                    Text("USD")
                        .font(.caption)
                    Text("$17,370.52")
                        .font(.headline)
                }
                .padding(.bottom)
            Text("**** **** **** 3022")
                .font(.caption)
                .padding(.vertical)
//                Spacer()
        }
        .frame(width: 150, height: 150)
        .padding(8)
        .background(Color.blue.opacity(0.6))
        .cornerRadius(20)
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        CardView()
                .previewLayout(.sizeThatFits)
        }
    }
}
