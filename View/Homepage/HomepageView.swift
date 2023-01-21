//
//  HomepageView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 10/08/22.
//

import SwiftUI

struct HomepageView: View {
    var body: some View {
        NavigationView{
            ZStack {
                VStack(spacing: -25){
                    Head()
                    
                    ZStack(alignment: .top){
                        Rectangle()
                            .fill(Color("Salmon"))
                            .frame(height: 150)
                        VStack(spacing: -10){
                            HStack {
                                Text("My trip")
                                    .font(.custom("Poppins-SemiBold", size: 18))
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                                Text("See more")
                                    .font(.custom("Poppins-Regular", size: 11))
                                    .foregroundColor(.white)
                            }
                            .frame(width: 350, height: 100)
                                
                            TripCarousel()
                        }
                        
                    }
                    
                    SegmentedHomeView()
                        .padding(.top, -60)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}

struct Head: View{
    var body: some View{
        ZStack{
            Color("Salmon")
                .ignoresSafeArea()
            
            ZStack (alignment: .top){
                HStack {
                    VStack {
                        HStack {
                            Text("Hi,")
                                .font(.custom("Poppins-Regular", size: 22))
                                .foregroundColor(.white)
                            Text("Kiera Watson")
                                .font(.custom("Poppins-Bold", size: 22))
                                .foregroundColor(.white)
                        }
                        .padding(.bottom, 1)
                        Text("Explore the unseen place")
                            .font(.custom("Poppins-Regular", size: 11))
                            .foregroundColor(.white)
                            .frame(width: 184, alignment: .leading)
                    }
                    
                    Spacer()
                    
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
            .frame(width: 350, height: 55)
        }
        .frame(width: 390, height: 100)
    }
}
