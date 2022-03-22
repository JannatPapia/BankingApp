
//
//  ContentView.swift
//  FastingTimerApp
//
//  Created by Jannatun Nahar Papia  on 15/2/22.
//

import SwiftUI

struct RecordView: View {
    @State private var name: String = ""
    @State private var place: String = "Write down somthing here ... "
 //   @Environment(\.dismiss) var dismiss
    @Binding var dismiss: Bool
    
    init(dismiss: Binding<Bool>) {
            self._dismiss = dismiss
            UITextView.appearance().backgroundColor = .clear
        }

    
//    init() {
//        UITextView.appearance().backgroundColor = .clear
//    }
    var body: some View {
        VStack {
            VStack{
                HStack{
                    //     Button(action: {}, label: { (dont need button)
                    //                        Image(systemName: "xmark")
                    //                            .frame(width: 35, height: 50, alignment: .leading)
                    //                            .foregroundColor(.black)
                    
//                    Button {
//                       dismiss()
//
//                    } label: {
//                        Image(systemName: "xmark")
//                            .frame(width: 35, height: 50, alignment: .leading)
//                            .foregroundColor(.black)
//
//                        //      Label("Cancel", systemImage: "xmark")
//                            .labelStyle(.iconOnly)
//                    }
                    
                    Button(action : {
                        self.dismiss
                               //         dismiss.toggle()
                                    }){
                                        Image(systemName: "xmark")
                                            .frame(width: 35, height: 50, alignment: .leading)
                                            .foregroundColor(Color.black)
                                           
                                    }
                    
                    
                        Text("Add fasting phase")
                            .bold()
                            .padding(.leading, 50)
                            .foregroundColor(Color.black)
     //               })
                    Spacer()
                }.padding(.horizontal)
            }
            ScrollView {
                VStack {
                    /*Divider work both HStack and VStack*/
                    Divider()
                    HStack {
                        Text("Started")
                            .foregroundColor(Color.black)
                        Spacer()
                        Text("2/10, 09:00 p.m ")
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color.black)
                        Image(systemName: "paintbrush.pointed.fill")
                    }.padding()
                    Divider()
                    HStack {
                        Text("Finished")
                            .foregroundColor(Color.black)
                        Spacer()
                        Text("2/11, 10:33 a.m ")
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color.black)
                        Image(systemName: "paintbrush.pointed.fill")
                    }.padding()
                    Divider()
                    VStack {
                        Spacer()
                        VStack {
                            HStack{
                                Text("Total Expense This Month")
                                    .padding([.leading,.bottom],15)
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("13h 33m")
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(Color.black)
                                    .padding()
                            }
                            HStack {
                                HStack{
                                    Text("Your fasting window")
                                        .padding([.leading,.bottom],15)
                                        .foregroundColor(Color.black)
                                }
                                Spacer()
                                Image (systemName: "paintbrush.pointed.fill")
                            }.padding([.trailing,.bottom],10)
                        }
                        .padding([.leading,.trailing],1)
                        .padding([.top,.bottom],10)
                        .background(.gray.opacity(0.2))
                    }
                }
                /*For Text Section*/
                VStack {
                    HStack{
                        Text("How did you feel?")
                            .bold()
                            .foregroundColor(Color.black)
                        Spacer()
                    }
                }
                .padding()
                /*For Emoji and Text(call emoji class*/
                HStack {
                    Emoji()
                    Emoji()
                    Emoji()
                    Emoji()
                    Emoji()
                }
                /*For comment Text*/
                HStack {
                    VStack {
                        Text("Comment")
                            .bold()
                            .foregroundColor(Color.black)
                    }
                    Spacer()
                }
                .padding()
                .padding([.leading,.trailing])
                .padding([.top],1)
                /*For Text Editor */
                VStack{
                    ZStack {
                        if self.name.isEmpty {
                            TextEditor(text: $place)
                                .font(.body)
                                .foregroundColor(.orange)
                                .disabled(true)
                                .padding()
                        }
                        TextEditor(text: $name)
                            .font(.body)
                            .padding(.trailing,70)
                            .background(Color.gray)
                            .opacity(self.name.isEmpty ? 0.25 : 1)
                            .cornerRadius(15)
                            .frame(maxWidth: .infinity, minHeight: 170)
                    }
                }
                .padding([.leading,.trailing],15)
            }
            /*For Add button*/
            VStack {
                Text("Add")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(.green)
                    .cornerRadius(35.0)
            }
        }
    }
}
struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView(dismiss: .constant(true))
    }
}


struct Emoji: View {
    var body: some View {
        HStack {
            VStack{
                Image("bad")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(3.0)
                    .padding([.trailing,.leading],10)
                //    .foregroundColor(Color.black)
                Text("Bad")
                    .foregroundColor(Color.black)
            }
        }
    }
}
