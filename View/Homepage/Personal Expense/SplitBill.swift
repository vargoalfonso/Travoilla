//
//  SplitBill.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 23/08/22.
//

import SwiftUI

struct SplitBill: View {
    
    @State var friend: String = ""
    
    @State private var showingSheet = false
    
    var body: some View {
        VStack{
            Text("Choose Friends")
                .font(.custom("Poppins-SemiBold", size: 20))
                .padding(.bottom, 25)
                .padding(.top, 50)
            
            Group {
                Text("Enjoy together, happy to share and")
                    .font(.custom("Poppins-Regular", size: 15))
                .foregroundColor(.gray)
                Text("save your time.")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(.gray)
            }
            
            
            Button(action: {showingSheet.toggle()}, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 63)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray)
                        .opacity(0.3)
                        .frame(width: 350, height: 63)
                    
                    HStack{
                        Text("Friends")
                            .font(.custom("Poppins-SemiBold", size: 15))
                            .foregroundColor(.black)
                            .frame(width: 88.25, height: 23, alignment: .leading)
                        
                        TextField("", text: $friend)
                            .font(.custom("Poppins-Regular", size: 15))
                            .textContentType(.oneTimeCode)
                            .keyboardType(.numberPad)
                            .placeholder(when: friend.isEmpty) {
                                Text("Search your friends")
                                    .font(.custom("Poppins-Regular", size: 15))
                                    .foregroundColor(.gray)
                            }
                            .frame(width: 205, height: 23, alignment: .leading)
                    }
                    
                    
                }
            })
            .sheet(isPresented: $showingSheet, content: {
                FriendSheetView()
            })
            .padding(.top, 30)
            
            Spacer()
                .frame(height: 270)
            
            Button(action: {}) {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color("Disabled"))
                    
                    Text("Create Split Bill")
                        .font(.custom("Poppins-SemiBold", size: 12))
                        .foregroundColor(.white)
                }
            }
            
            Spacer()
        }
    }
}

struct SplitBill_Previews: PreviewProvider {
    static var previews: some View {
        SplitBill()
    }
}
