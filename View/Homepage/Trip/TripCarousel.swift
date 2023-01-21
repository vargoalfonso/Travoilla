//
//  TripCarousel.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 10/08/22.
//

import SwiftUI

struct TripCarousel: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 275) {
                ForEach(trips){it in
                    GeometryReader {proxy in
                        let scale = getScale(proxy: proxy)
                        Button(action: {}) {
                            ZStack{
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(.white)
                                    .frame(width: 250, height: 120)
                                    .shadow(radius: 1)
                                
                                VStack {
                                    HStack{
                                        Text(it.title)
                                            .font(.custom("Poppins-Semibold", size: 15))
                                            .foregroundColor(.black)
                                            .frame(width: 150, alignment: .leading)
                                        
                                        Spacer()
                                        
                                        Image(systemName: "ellipsis")
                                            .rotationEffect(.degrees(90))
                                            .foregroundColor(.gray)
                                    }
                                    .frame(width: 216)
                                    
                                    Text("Current trip")
                                        .font(.custom("Poppins-Regular", size: 10))
                                        .foregroundColor(.gray)
                                        .frame(width: 216, alignment: .leading)
                                    
                                    Rectangle()
                                        .fill(Color(red: 242/255, green: 242/255, blue: 242/255))
                                        .frame(width: 216, height: 1)
                                    
                                    ZStack{
                                        HStack(spacing: 4){
                                            HStack(spacing: -6){
                                                Image("Avatar")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                
                                                Image("Avatar3")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                            }
                                            
                                            Text(it.date)
                                                .font(.custom("Poppins-Regular", size: 10))
                                                .foregroundColor(.gray)
                                            Text("-")
                                                .font(.custom("Poppins-Regular", size: 10))
                                                .foregroundColor(.gray)
                                            Text(it.place)
                                                .font(.custom("Poppins-Regular", size: 10))
                                                .foregroundColor(.gray)
                                            Text("Places")
                                                .font(.custom("Poppins-Regular", size: 10))
                                                .foregroundColor(.gray)
                                        }
                                    }
                                    .frame(width: 216, alignment: .leading)
                                    
                                    
                                        
                                    
                                }
                            }
                        }
//                        .scaleEffect(.init(width: scale, height: scale))
//                        .animation(.easeOut(duration: 1))
                    }
                }
                Spacer()
                    .frame(width: 16)
            }
            .padding(.leading, 20)
        }
    }
    
    func getScale(proxy: GeometryProxy) -> CGFloat {
        let midPoint: CGFloat = 125
        
        let viewFrame = proxy.frame(in: CoordinateSpace.global)
        
        var scale: CGFloat = 1.0
        let deltaXAnimationThreshold: CGFloat = 125
        
        let diffFromCenter = abs(midPoint - viewFrame.origin.x - deltaXAnimationThreshold / 2)
        if diffFromCenter < deltaXAnimationThreshold {
            scale = 1 + (deltaXAnimationThreshold - diffFromCenter) / 500
        }
        
        return scale
    }
}

struct TripCarousel_Previews: PreviewProvider {
    static var previews: some View {
        TripCarousel()
    }
}
