//
//  MyTripView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 24/08/22.
//

import SwiftUI

struct MyTripView: View {
    var body: some View {
        NavigationView{
            TabTripView()
                .padding(.top, 60)
                .navigationBarHidden(true)
                .ignoresSafeArea()
        }
    }
}


struct MyTripView_Previews: PreviewProvider {
    static var previews: some View {
        MyTripView()
    }
}

struct TabTripView: View {
    
    @State var pick = 0
    
    var body: some View {
        
        VStack(spacing: 0){
            TripBar(pick: self.$pick)
                .padding(.bottom, 30)
            
            if self.pick == 0 {
                TripsView()
            }
            if self.pick == 1 {
                HistoryView()
            }
        }
        //        .animation(.default)
        //        .ignoresSafeArea(.container, edges: .top)
    }
}

struct TripBar: View{
    
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
                    
                    Text("Trip")
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
                    
                    Text("History")
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
