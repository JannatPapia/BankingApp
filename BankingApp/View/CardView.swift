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
        VStack(alignment: .leading) {
            HStack{
                Spacer()
                Image("visa") // logo
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 15)
                    .foregroundColor(.white)
                    .padding()
   //                 .padding(3)
   //                 .background(Color.white)
//                   .cornerRadius(5)

            }
            Spacer()
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
   //             .padding(.vertical)
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
