//
//  CategorySheetView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 23/08/22.
//

import SwiftUI

struct CategorySheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
//    @State var category: String
    
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
                
                Text("Category")
                    .font(.custom("Poppins-SemiBold", size: 15))
                    .padding(.top, 20)
                    .padding(.bottom)
                
                
                VStack{
                    HStack{
                        Button(action: {}) {
                            VStack{
                                Image("Transportation")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .padding(.bottom)
                                
                                Text("Transportation")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(.black)
                            }
                        }
                        
                        Button(action: {}, label: {
                            VStack{
                                Image("Food")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .padding(.bottom)
                                
                                VStack{
                                    Text("Food &")
                                    Text("Beverages")
                                }
                                .font(.custom("Poppins-Regular", size: 14))
                                .frame(width: 89, height: 42, alignment: .center)
                                .foregroundColor(.black)
                            }
                        })
                        .frame(width: 89, height: 122, alignment: .center)
                        .padding(.leading)
                        .padding(.trailing)
                        
                        Button(action: {}, label: {
                            VStack{
                                Image("Activity")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .padding(.bottom)
                                
                                Text("Activity")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(.black)
                            }
                        })
                        .padding(.trailing)
                        .padding(.leading)
                        
                    }
                    .frame(width: 350, alignment: .center)
                    .padding(.bottom)
                    
                    HStack{
                        Button(action: {}) {
                            VStack{
                                Image("Accomodation")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .padding(.bottom)
                                
                                Text("Accomodation")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(.black)
                            }
                            .padding(.leading)
                            .padding(.trailing)
                        }
                        
                        Button(action: {}, label: {
                            VStack{
                                Image("Shopping")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .padding(.bottom)
                                
                                VStack{
                                    Text("Shopping")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(.black)
                                }
                                
                            }
                        })
                        .frame(width: 89, height: 122, alignment: .center)

                        .padding(.trailing)
                        
                        Button(action: {}) {
                            VStack{
                                Image("Emergency")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .padding(.bottom)
                                
                                Text("Emergency")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(.black)
                            }
                        }
                        
                    }
                    .frame(width: 350, alignment: .center)
                    .padding(.leading)
                    .padding(.trailing, 50)
                    
                    HStack{
                        Button(action: {}) {
                            VStack{
                                Image("Others")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .padding(.bottom)
                                
                                Text("Others")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    .frame(width: 350, alignment: .leading)
                    .padding(.leading, 55)
                    
                }
                .frame(width: 350, alignment: .center)
                
                Spacer()
            }
        }
    }
}

struct CategorySheetView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySheetView()
    }
}
