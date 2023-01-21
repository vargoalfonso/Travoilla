//
//  SegmentedHomeView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 10/08/22.
//

import SwiftUI

struct dest{
    let pic: String
    let title: String
    let desc: String
    let prof: String
    let name: String
}

let dests = [
    dest(pic: "1", title: "Trip to The Great Wall of China - Guide", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a dui et velit rhoncus commodo. Donec vestibulum condimentum leo ac mattis.", prof: "Avatar2", name: "Marc"),
    dest(pic: "2", title: "Trip to Indonesia - Guide", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a dui et velit rhoncus commodo. Donec vestibulum condimentum leo ac mattis.", prof: "Avatar2", name: "Marc")
]

struct SegmentedHomeView: View {
    var body: some View {
        Homepage()
    }
}

struct SegmentedHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedHomeView()
    }
}

struct Homepage: View{
    
    @State var onClick: Bool = false
    
    var body: some View{
        ZStack {
            Color(red: 249/255, green: 250/255, blue: 251/255)
                .ignoresSafeArea()
            ScrollView {
                VStack{
                    ForEach(0..<dests.count, id:\.self){i in
                        ZStack(alignment: .topTrailing){
                            Image(dests[i].pic)
                                .resizable()
                                .frame(width: 390)
                            
                            Button(action: {}) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color(red: 107/255, green: 114/225, blue: 128/255))
                                        .frame(width: 69, height: 25.88)
                                        .opacity(0.8)
                                    
                                    Text("Guide")
                                        .font(.custom("Poppins-SemiBold", size: 10))
                                        .foregroundColor(.white)
                                }
                                .padding(.top, 21)
                                .padding(.trailing, 21)
                            }
                        }
                        .frame(width: 390, height: 200)
                        
                        VStack(alignment: .leading) {
                            Text(dests[i].title)
                                .font(.custom("Poppins-SemiBold", size: 12))
                                .padding(.bottom, 5)
                                .padding(.top)
                            
                            Text(dests[i].desc)
                                .font(.custom("Poppins-Regular", size: 12))
                                .foregroundColor(.gray)
                                .padding(.bottom, 5)
                        }
                        .frame(width: 350)
                        
                        HStack {
                            Image(dests[i].prof)
                                .resizable()
                                .clipped()
                                .frame(width: 25, height: 25)
                            Text(dests[i].name)
                                .font(.custom("Poppins-Regular", size: 12))
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Button(action: {self.onClick.toggle()}) {
                                Image(self.onClick == true ? "RibbonFill" : "Ribbon")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            }
                        }
                        .frame(width: 340)
                        
                    }
                }
            }
        }
    }
}
