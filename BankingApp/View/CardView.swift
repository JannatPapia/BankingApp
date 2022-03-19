//
//  CardView.swift
//  BankingApp
//
//  Created by Jannatun Nahar Papia  on 19/3/22.
//

import Foundation
import SwiftUI

struct CardView: View {
    
    @State var isSelected: Bool = false

    var body: some View {

        VStack(alignment: .leading) {
            HStack{
                Spacer()
                Image("visa") // logo
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 15)
                    .foregroundColor(isSelected ? .white: .black)
                    .padding()
   //                 .padding(3)
   //                 .background(Color.white)
//                   .cornerRadius(5)

            }
            Spacer()
            Text("Balance")
                .foregroundColor(isSelected ? .white: .black)
                .font(.caption)
                .padding(.bottom, 5)
            HStack(alignment: .center){
                    Text("USD")
                        .foregroundColor(isSelected ? .white: .black)
                        .font(.caption)
                    Text("$17,370.52")
                        .foregroundColor(isSelected ? .white: .black)
                        .font(.headline)
                        .fontWeight(.heavy)
                }
                .padding(.bottom)
            Spacer()
            Text("**** **** **** 3022")
                .foregroundColor(isSelected ? .white: .black)
                .font(.caption)
                .padding(.bottom)
//                Spacer()
        }
        .frame(width: 130, height: 170)
        .padding(8)
        .background(Color(isSelected ? .blue : .white))
        .cornerRadius(20)
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        CardView(isSelected: true)
                .previewLayout(.sizeThatFits)
            CardView()
                    .previewLayout(.sizeThatFits)
        }
    }
}
