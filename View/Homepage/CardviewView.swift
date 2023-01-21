//
//  CardviewView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 18/08/22.
//

import SwiftUI

struct CardviewView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 350, height: 166)
                .foregroundColor(.white)
            
            VStack{
                HStack{
                    VStack (alignment: .leading){
                        Text("Trip to Bandung")
                            .font(.system(size: 16, weight: .bold))
                            .padding(.bottom, 5)
                        Text("Aug 1 - 4, 2022")
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
                            Text("13,500,000")
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
                            Text("15,000,000")
                                .font(.system(size: 16, weight: .bold))
                        }
                    }
                }
                .frame(width: 300)
            }
        }
    }
}

struct CardviewView_Previews: PreviewProvider {
    static var previews: some View {
        CardviewView()
    }
}
