//
//  SheetView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 14/08/22.
//

import SwiftUI

struct SheetView: View {
    
    struct place{
        let img: String
        let city: String
    }
    
    let places = [
        place(img: "D1", city: "Bali"),
        place(img: "D2", city: "Jogjakarta"),
        place(img: "D3", city: "Bandung")
    ]
    
    
    @Environment(\.dismiss) var dismiss
    @State var search = ""
    
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
                
                Text("Destination")
                    .font(.custom("Poppins-SemiBold", size: 15))
                    .padding(.top, 20)
                    .padding(.bottom)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray)
                        .frame(width: 350, height: 50)
                        .foregroundColor(.white)
                    
                    HStack {
                        TextField("", text: $search)
                            .placeholder(when: search.isEmpty) {
                                Text("Search")
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
                
                VStack{
                    Text("Favourite Destination")
                        .font(.custom("Poppins-SemiBold", size: 15))
                        .padding(.bottom)
                    
                    ForEach(0..<places.count, id: \.self) { p in
                        VStack {
                            HStack{
                                Image(places[p].img)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding(.trailing)
                                
                                VStack(spacing: 3){
                                    Text(places[p].city)
                                        .font(.custom("Poppins-Regular", size: 15))
                                        .foregroundColor(.black)
                                        .frame(width: 100, alignment: .leading)
                                    
                                    Text("Place to visit")
                                        .font(.custom("Poppins-Regular", size: 10))
                                        .foregroundColor(.gray)
                                        .frame(width: 100, alignment: .leading)
                                }
                            }
                        }
                    }
                }
                .frame(width: 350, alignment: .leading)
                
                Spacer()
            }
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        
        SheetView()
    }
}
