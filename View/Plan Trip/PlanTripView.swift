//
//  PlanTripView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 12/08/22.
//

import SwiftUI

struct PlanTripView: View {
    
    @State private var showingSheet = false
    @State private var start = Date()
    @State private var end = Date()
    @State private var search: String = ""
    @State private var isShowingDetailView = false
    let exampleColor : Color = Color(red: 255/255, green: 90/255, blue: 95/255)
    var body: some View {
        NavigationView {
            ZStack{
                Color(red: 249/255, green: 250/255, blue: 251/255)
                    .ignoresSafeArea()
                VStack{
                    Text("Plan a new trip")
                        .font(.custom("Poppins-SemiBold", size: 20))
                        .padding(.bottom)
                    Text("Build an itenerary and map ut your\nupcoming travel plans")
                        .multilineTextAlignment(.center)
                        .font(.custom("Poppins-Regular", size: 15))
                        .padding()
                    Button(action: {showingSheet.toggle()}) {
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray)
                                .frame(width: 350, height: 63)
                            
                            HStack{
                                Section{
                                Text("Destination")
                                    .font(.custom("Poppins-SemiBold", size: 15))
                                    .foregroundColor(.black)
                                    
                                    .frame(width: 150, height: 23)
                                
                                TextField("e.g., Japan, Paris, Indonesia", text: $search)
                                    .font(.custom("Poppins-Regular", size: 15))
                                    .foregroundColor(.gray)
                                }.padding()}
                        }
                    }
                   
                    
                    Button(action: {}) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray)
                                .frame(width: 350, height: 63)
                            
                            HStack{
                                Text("Start Date")
                                    .font(.custom("Poppins-SemiBold", size: 15))
                                    .foregroundColor(.black)
                                    .frame(width: 150, height: 23)
                                
                                DatePicker("", selection: $start, displayedComponents: .date).foregroundColor(.gray)
                                    .font(.custom("Poppins-Regular", size: 15)).padding().padding()
                                    
                            }.padding()
                        }
                    }
            
                    
                    Button(action: {}) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray)
                                .frame(width: 350, height: 63)
                            
                            HStack{
                                Text("End Date")
                                    .font(.custom("Poppins-SemiBold", size: 15))
                                    .foregroundColor(.black)
                                    .frame(width: 150, height: 23)
                                
                                DatePicker("", selection: $start, displayedComponents: .date).foregroundColor(.gray)
                                    .font(.custom("Poppins-Regular", size: 15)).padding()
                            }.padding()
                        }
                    }
              
                    
                    NavigationLink("", destination: budget().navigationBarBackButtonHidden(true), isActive: $isShowingDetailView)
                    Button(action: { self.isShowingDetailView = true}, label: {
                      Text("Start Planning")
                        .padding()
                        .foregroundColor(.white)
                        .background(exampleColor)
                        .cornerRadius(10)
                    }).padding(.top,70)
                        .disabled(search.isEmpty)
                    .padding(.top, 50)
                    
                    Button(action: {}) {
                        ZStack {
                            Text("Cancel")
                                .font(.custom("Poppins-SemiBold", size: 15))
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.top)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct PlanTripView_Previews: PreviewProvider {
    static var previews: some View {
        PlanTripView()
    }
}
