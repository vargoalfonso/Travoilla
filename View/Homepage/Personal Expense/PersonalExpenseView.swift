//
//  PersonalExpenseView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 20/08/22.
//

import SwiftUI

struct PersonalExpenseView: View {
    var body: some View {
        NavigationView{
            ExpenseView()
                .padding(.top, 60)
                .navigationBarHidden(true)
                .ignoresSafeArea()
        }
    }
}

struct PersonalExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalExpenseView()
    }
}

struct ExpenseView: View {
    
    @State var pick = 0
    
    var body: some View {
        
        VStack(spacing: 0){
            PersonalBar(pick: self.$pick)
            
            if self.pick == 0 {
                Personal()
            }
            if self.pick == 1 {
                SplitBill()
            }
        }
    }
}


struct PersonalBar: View{
    
    @Binding var pick: Int
    
    var body: some View{

        HStack(spacing: 15){
            Button(action: {
                self.pick = 0
            }) {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 167, height: 50)
                        .foregroundColor(self.pick == 0 ? Color("Salmon") : .white)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Salmon"))
                        .frame(width: 167, height: 50)
                    
                    Text("Personal")
                        .font(.custom(self.pick == 0 ? "Poppins-SemiBold" : "Poppins-Regular", size: 12))
                        .foregroundColor(self.pick == 0 ? .white : Color("Salmon"))
                    
                }
            }
            
            Button(action: {
                self.pick = 1
            }) {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 167, height: 50)
                        .foregroundColor(self.pick == 1 ? Color("Salmon") : .white)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Salmon"))
                        .frame(width: 167, height: 50)
                    
                    Text("Split Bill")
                        .font(.custom(self.pick == 1 ? "Poppins-SemiBold" : "Poppins-Regular", size: 12))
                        .foregroundColor(self.pick == 1 ? .white : Color("Salmon"))
                    
                }
            }
            
        }
//        .ignoresSafeArea()
//        .padding(.top, 50)
        .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)!)
        .padding(.horizontal)
        .padding(.bottom, 8)
        .background(Color(red: 249/255, green: 250/255, blue: 251/255))
    }
}
