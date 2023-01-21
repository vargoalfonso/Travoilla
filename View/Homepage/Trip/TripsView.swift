//
//  TripsView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 24/08/22.
//

import SwiftUI

struct TripsView: View {
    
    var body: some View {
        ScrollView{
            ForEach(trips) {a in
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 350, height: 166)
                        .foregroundColor(.white)
                    
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.gray)
                        .frame(width: 350, height: 166)
                        .foregroundColor(.white)
                        
                    VStack{
                        HStack{
                            VStack (alignment: .leading){
                                Text(a.title)
                                    .font(.system(size: 16, weight: .bold))
                                    .padding(.bottom, 5)
                                Text(a.date)
                                    .font(.system(size: 12, weight: .regular))
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            Button(action: {}) {
                                Text("Trip Details")
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundColor(Color("Salmon"))
                            }
                        }
                        .frame(width: 300)
                        
                        Rectangle()
                            .frame(width: 302, height: 1)
                            .foregroundColor(.gray)
                            .opacity(0.2)
        //                    .padding(7)
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Expense")
                                    .font(.system(size: 12, weight: .regular))
                                    .foregroundColor(.gray)
                                    .padding(.bottom, 2)
                                
                                HStack{
                                    Text(a.expense)
                                        .font(.system(size: 16, weight: .bold))
                                    
                                    Text("(70%)")
                                        .font(.system(size: 12, weight: .regular))
                                        .foregroundColor(Color(red: 255/255, green: 155/255, blue: 90/255))
                                }
                            }
                            
                            Spacer()
                            
                            VStack{
                                Text("Budget")
                                    .font(.system(size: 12, weight: .regular))
                                    .foregroundColor(.gray)
                                    .padding(.bottom, 2)
                                
                                HStack{
                                    Text(a.budget)
                                        .font(.system(size: 16, weight: .bold))
                                }
                            }
                        }
                        .frame(width: 300)
                    }
                    
                }
                .padding(.bottom, 15)
            }
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
