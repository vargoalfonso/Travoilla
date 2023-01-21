//
//  TabBarView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 11/08/22.
//

import SwiftUI

struct TabBarView: View {
    
    @State var selected = 0
    
    var body: some View {
        VStack{
            if self.selected == 0 {
                HomepageNewView()
            }
            if self.selected == 1 {
                PlanTripView()
            }
            if self.selected == 2 {
                NotificationView()
            }
            
            AppBar2(selected: self.$selected)
        }
//        .animation(.default)
        .edgesIgnoringSafeArea(.all)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

struct AppBar2: View{
    
    @Binding var selected: Int
    
    var body: some View{
        HStack(spacing: 55){
            Button(action: {
                self.selected = 0
            }) {
                VStack(spacing: 8) {
                    Image(self.selected == 0 ? "HouseActive" : "HouseIdle")
                    HStack(spacing: 12){
                        Text("Overview")
                            .font(.custom("Poppins-SemiBold", size: 12))
                            .foregroundColor(self.selected == 0 ? .pink : .gray)
                    }
                }
            }
            
            Button(action: {
                self.selected = 1
            }) {
                NavigationLink(destination: PersonalExpenseView()) {
                    VStack(spacing: 8) {
                        HStack(spacing: 12){
                            Image("Plus")
                                .resizable()
                                .frame(width: 48, height: 48)
                        }
                    }
                }
            }
            
            Button(action: {
                self.selected = 2
            }) {
                VStack(spacing: 8) {
                    Image(self.selected == 2 ? "NotificationActive" : "NotificationIdle")
                    HStack(spacing: 12){
                        Text("Notification")
                            .font(.custom("Poppins-SemiBold", size: 12))
                            .foregroundColor(self.selected == 2 ? .pink : .gray)
                    }
                }
            }
            
        }
        .padding(.top, 10)
        .padding(.horizontal)
        .padding(.bottom, 25)
    }
}
