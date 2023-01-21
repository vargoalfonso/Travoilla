//
//  HomepageNewView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 18/08/22.
//

import SwiftUI

struct HomepageNewView: View {
    var body: some View {
        NavigationView{
            ZStack {
                BG()
                    .ignoresSafeArea()
                VStack {
                    Heads()
                    ZStack {
                        VStack{
                            TripView()
                            MyTrip()
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct HomepageNewView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageNewView()
    }
}

struct Heads: View{
    var body: some View{
        ZStack (alignment: .top){
            HStack {
                VStack (alignment: .leading){
                    HStack {
                        Text("Hi,")
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                        Text("Kiera Watson")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 1)
                    Text("Explore the unseen place with Travoila")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.white)
                }
                .frame(width: 220)
                
                Spacer()
                
                NavigationLink(destination: ProfileView()) {
                    ZStack(alignment: .trailing){
                        ZStack {
                            Circle()
                                .fill(.white)
                                .frame(width: 50, height: 50)
                            
                            Image("Avatar")
                                .resizable()
                                .clipped()
                                .frame(width: 45, height: 45)
                        }
                    }
                }
            }
        }
        .frame(width: 350, height: 55)
    }
}

struct MyTrip: View{
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 350, height: 558, alignment: .center)
                .foregroundColor(.white)
            
            VStack {
                Image("Homepage")
                    .resizable()
                    .frame(width: 191.39, height: 185.74)
                    .padding(.bottom)
                
                Text("You have not plan any trip yet")
                    .font(.system(size: 14, weight: .regular))
            }
        }
        .padding(.bottom, 18.7)
    }
}

struct BG: View{
    var body: some View{
        VStack{
            Rectangle()
                .frame(width: 390, height: 261)
                .foregroundColor(Color("Salmon"))
            
            Rectangle()
                .frame(width: 390, height: 600)
                .foregroundColor(Color(red: 243/255, green: 244/255, blue: 246/255))
        }
    }
}

struct TripView: View {
    var body: some View {
        HStack {
            Text("My trip")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
            
            Spacer()
            
            NavigationLink(destination: MyTripView()) {
                Text("See more")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.white)
            }
            
            
            
            
        }
        .frame(width: 350)
    }
}

