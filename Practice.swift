//
//  Practice.swift
//  BankingApp
//
//  Created by Jannatun Nahar Papia  on 22/3/22.
//

import SwiftUI

struct Practice: View {
    @State var isShow : Bool
    @State var counter : Int = 0
    var body: some View {
        
        VStack{
            Button {
                if isShow == true {
                    isShow = false
                }else{
                    isShow = true
                }
            } label: {
                if isShow == true  {
                    Text("hide")
                }else {
                    VStack{
                        Text("show")
                        Button {
                            // TODO:
                            print("fire")
                            counter = counter  + 1 //1
                        } label: {
                            Text("Touch me")
                        }
                        if counter > 0 && counter < 20 { //1 >20
                            Text("touch count \(counter)")
                        }else if counter >= 20{
                            Text("touch count \(counter)").foregroundColor(Color.red)
                        }
                    }
                }
            }
        }
//        VStack{
//            Button {
//                // TODO:
//                print("fire")
//                counter = counter  + 1 //1
//            } label: {
//                Text("Touch me")
//            }
//
//            if counter > 0 && counter < 20 { //1 >20
//                Text("touch count \(counter)")
//            }
//            else if counter >= 20{
//                Text("touch count \(counter)").foregroundColor(Color.red)
//            }
//            Button{
//                if isShow == true {
//                    isShow = false
//                }else{
//                    isShow = true
//                }
//            } label: {
//                if isShow == true  {
//                    Text("hide")
//                }else {
//                    Text("show")
//                }
//            }
//        }
    }
}

struct Practice_Previews: PreviewProvider {
    static var previews: some View {
        Practice(isShow: true)
    }
}


//    VStack{
//        Button {
//            if isShow == true {
//                isShow = false
//            }else{
//                isShow = true
//            }
//        } label: {
//            if isShow == true  {
//                Text("hide")
//            }else {
//                VStack{
//                    Text("show")
//                    Button {
//                        // TODO:
//                        print("fire")
//                        counter = counter  + 1 //1
//                    } label: {
//                        Text("Touch me")
//                    }
//                    if counter > 0 && counter < 20 { //1 >20
//                        Text("touch count \(counter)")
//                    }
//                }else if counter >= 20{
//                    Text("touch count \(counter)").foregroundColor(Color.red)
//                }
//            }
//        }
//    }
//}
