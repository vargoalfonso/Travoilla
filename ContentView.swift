//
//  ContentView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 09/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        OverviewView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
