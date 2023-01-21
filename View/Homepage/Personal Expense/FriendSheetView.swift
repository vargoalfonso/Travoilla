//
//  FriendSheetView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 24/08/22.
//

import SwiftUI

struct FriendSheetView: View {
    
    @State var search = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color(red: 243/255, green: 244/255, blue: 246/255)
                .ignoresSafeArea()
            
            VStack{
                Capsule()
                    .frame(width: 60, height: 6)
                    .foregroundColor(.gray)
                    .opacity(0.3)
                    .padding(.top)
                
                Text("Invite Travelmate")
                    .font(.custom("Poppins-SemiBold", size: 15))
                    .padding(.top, 20)
                    .padding(.bottom)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.gray)
                        .frame(width: 350, height: 50)
                        .foregroundColor(.white)
                    
                    HStack {
                        TextField("", text: $search)
                            .placeholder(when: search.isEmpty) {
                                Text("Find Travelmate")
                                    .font(.custom("Poppins-Regular", size: 15))
                                    .foregroundColor(.gray)
                                
                            }
                            .padding(.leading)
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image("Search")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .padding(.trailing)
                        }
                    }
                    .frame(width: 350, height: 50)
                    
                }
                .padding(.bottom, 30)
                
                Spacer()
                
            }
        }
    }
}

struct FriendSheetView_Previews: PreviewProvider {
    static var previews: some View {
        FriendSheetView()
    }
}
