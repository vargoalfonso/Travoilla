//
//  Personal.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 23/08/22.
//

import SwiftUI

struct Personal: View{
    
    @State var title: String = ""
    @State var amount: String = ""
    @State var category: String = ""
    @State var dates: String = ""
    @State var notes: String = ""
    
    @State private var showingSheet = false
    
    var body: some View{
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 63)
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray)
                    .opacity(0.3)
                    .frame(width: 350, height: 63)
                
                HStack{
                    Text("Title")
                        .font(.custom("Poppins-SemiBold", size: 15))
                        .foregroundColor(.black)
                        .frame(width: 88.25, height: 23, alignment: .leading)
                    
                    TextField("", text: $title)
                        .font(.custom("Poppins-Regular", size: 15))
                        .placeholder(when: title.isEmpty) {
                            Text("e.g. Mie Ayam Suryadi")
                                .font(.custom("Poppins-Regular", size: 15))
                                .foregroundColor(.gray)
                        }
                        .frame(width: 205, height: 23, alignment: .leading)
                }
                
            }
            .padding(.top, 30)
            .padding(.bottom, 20)
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 63)
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray)
                    .opacity(0.3)
                    .frame(width: 350, height: 63)
                
                HStack{
                    Text("Amount")
                        .font(.custom("Poppins-SemiBold", size: 15))
                        .foregroundColor(.black)
                        .frame(width: 88.25, height: 23, alignment: .leading)
                    
                    TextField("", text: $amount)
                        .font(.custom("Poppins-Regular", size: 15))
                        .textContentType(.oneTimeCode)
                        .keyboardType(.numberPad)
                        .placeholder(when: amount.isEmpty) {
                            Text("How much?")
                                .font(.custom("Poppins-Regular", size: 15))
                                .foregroundColor(.gray)
                        }
                        .frame(width: 205, height: 23, alignment: .leading)
                }
                
            }
            .padding(.bottom, 20)
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 63)
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray)
                    .opacity(0.3)
                    .frame(width: 350, height: 63)
                
                Button(action: {showingSheet.toggle()}) {
                    HStack{
                        Text("Category")
                            .font(.custom("Poppins-SemiBold", size: 15))
                            .foregroundColor(.black)
                            .frame(width: 88.25, height: 23, alignment: .leading)
                        
                        TextField(category, text: $category)
                            .font(.custom("Poppins-Regular", size: 15))
                            .placeholder(when: category.isEmpty) {
                                Text("Choose Category")
                                    .font(.custom("Poppins-Regular", size: 15))
                                    .foregroundColor(.gray)
                            }
                            .frame(width: 205, height: 23, alignment: .leading)
                    }
                }
                .sheet(isPresented: $showingSheet) {
                    CategorySheetView()
                }
                
            }
            .padding(.bottom, 20)
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 63)
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray)
                    .opacity(0.3)
                    .frame(width: 350, height: 63)
                
                HStack{
                    Text("Date")
                        .font(.custom("Poppins-SemiBold", size: 15))
                        .foregroundColor(.black)
                        .frame(width: 88.25, height: 23, alignment: .leading)
                    
                    TextField("", text: $dates)
                        .font(.custom("Poppins-Regular", size: 15))
                        .placeholder(when: dates.isEmpty) {
                            Text("Select Date")
                                .font(.custom("Poppins-Regular", size: 15))
                                .foregroundColor(.gray)
                        }
                        .frame(width: 205, height: 23, alignment: .leading)
                }
            }
            .padding(.bottom, 20)
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 63)
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray)
                    .opacity(0.3)
                    .frame(width: 350, height: 63)
                
                HStack{
                    Text("Note")
                        .font(.custom("Poppins-SemiBold", size: 15))
                        .foregroundColor(.black)
                        .frame(width: 88.25, height: 23, alignment: .leading)
                    
                    TextField("", text: $notes)
                        .font(.custom("Poppins-Regular", size: 15))
                        .placeholder(when: notes.isEmpty) {
                            Text("Optional (Max. 150 Char)")
                                .font(.custom("Poppins-Regular", size: 15))
                                .foregroundColor(.gray)
                        }
                        .frame(width: 205, height: 23, alignment: .leading)
                }
                
            }
            .padding(.bottom, 60)
            
            Button(action: {}) {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color("Salmon"))
                    
                    Text("Save")
                        .font(.custom("Poppins-SemiBold", size: 12))
                        .foregroundColor(.white)
                }
            }
            
            Spacer()
        }
    }
}

struct Personal_Previews: PreviewProvider {
    static var previews: some View {
        Personal()
    }
}
