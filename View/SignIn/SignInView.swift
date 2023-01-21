//
//  SignInView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 09/08/22.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        ZStack {
            Color("Salmon")
                .ignoresSafeArea()
            
            Image("Vector")
                .position(x: 155, y: 40)
            
            Image("Vector")
                .rotationEffect(.degrees(180))
                .position(x: 235, y: 706)
            
            VStack {
                HStack {
                    Image("Logo")
                        .resizable()
                    .frame(width: 97, height: 83)
                    
                    Text("TRAVOILA!")
                        .font(.system(size: 23.58, weight: .semibold))
                        .foregroundColor(.white)
                }
                Spacer()
                    .frame(height: 30)
                
                SignInButton()

            }
            .position(x:196 ,y: 400)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
