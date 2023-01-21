//
//  SegmentedTabView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 10/08/22.
//

import SwiftUI

struct SegmentedTabView: View {
    var body: some View {
        VStack{
            Home()
        }
    }
}

struct SegmentedTabView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedTabView()
    }
}

struct Home: View{
    
    @State var selected = 0
    
    var body: some View{
        VStack(spacing: 0){
            AppBar(selected: self.$selected)
            
            if self.selected == 0 {
                First()
            }
            if self.selected == 1 {
                Second()
            }
        }
//        .animation(.default)
        .edgesIgnoringSafeArea(.all)
    }
}

struct AppBar: View{
    
    @Binding var selected: Int
    
    var body: some View{
        HStack{
            Button(action: {
                self.selected = 0
            }) {
                VStack(spacing: 8) {
                    HStack(spacing: 12){
                        Text("Trip Plans")
                            .font(.custom("Poppins-SemiBold", size: 15))
                            .foregroundColor(self.selected == 0 ? .pink : .gray)
                    }
                    Capsule()
                        .fill(self.selected == 0 ? Color("Salmon") : Color.secondary)
                        .frame(height: 4)
                }
            }
            
            Button(action: {
                self.selected = 1
            }) {
                VStack(spacing: 8) {
                    HStack(spacing: 12){
                        Text("Guides")
                            .font(.custom("Poppins-SemiBold", size: 15))
                            .foregroundColor(self.selected == 1 ? .pink : .gray)
                    }
                    Capsule()
                        .fill(self.selected == 1 ? Color("Salmon") : Color.secondary)
                        .frame(height: 4)
                }
            }
            
        }
        .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)!)
        .padding(.horizontal)
        .padding(.bottom, 8)
        .background(Color(red: 249/255, green: 250/255, blue: 251/255))
    }
}

struct First: View{
    var body: some View{
        VStack{
            Text("You haven't planned any trips yet.")
                .font(.custom("Poppins-Regular", size: 15))
                .foregroundColor(.gray)
                .padding()
            
            Button(action: {}) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("Salmon"))
                        .frame(width: 150, height: 50)
                    
                    Text("Start a planning trip")
                        .font(.custom("Poppins-SemiBold", size: 10))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct Second: View{
    var body: some View{
        VStack{
            Text("You haven't written any guides yet.")
                .font(.custom("Poppins-Regular", size: 15))
                .foregroundColor(.gray)
                .padding()
            
            Button(action: {}) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("Salmon"))
                        .frame(width: 150, height: 50)
                    
                    Text("Create a new guide")
                        .font(.custom("Poppins-SemiBold", size: 10))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

