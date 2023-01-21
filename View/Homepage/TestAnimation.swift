//
//  TestAnimation.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 18/08/22.
//

import SwiftUI

struct TestAnimation: View {
    
    @State var onTapButton = false
    
    var body: some View {
        Button(action: {onTapButton.toggle()}) {
            Image("Plus")
                .resizable()
                .frame(width: 48, height: 48)
        }
        .rotationEffect(.degrees(self.onTapButton ? 135 : 0))
        .animation(.default)
        
    }
}

struct TestAnimation_Previews: PreviewProvider {
    static var previews: some View {
        TestAnimation()
    }
}
