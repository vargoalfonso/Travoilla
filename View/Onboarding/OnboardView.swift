//
//  OnboardView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 24/08/22.
//

import SwiftUI

struct OnBoardingStep{
    let image: String
    let title: String
    let description: String
}

private let onBoardingSteps = [
    OnBoardingStep(image: "On1", title: "PERSONAL TRIP ASSISTANT", description: "HELP MANAGING YOUR TRAVEL EXPENSE"),
    OnBoardingStep(image: "On2", title: "SPLIT THE BILL", description: "SHARE THE BILLS WITH YOUR TRAVELMATE"),
    OnBoardingStep(image: "On3", title: "TRAVEL AND CHILL!", description: "EXPERIENCE MORE, WORRY LESS")
]

struct OnBoardingView: View {
    @State private var currentStep = 0
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Salmon")
                    .ignoresSafeArea()
                VStack{
                    HStack{
                            NavigationLink( destination: PlanTripView().navigationBarBackButtonHidden(true)){
                                Text("Skip")
                            }.foregroundColor(.white)
                            .padding(.leading,250)
                    }
                    
                    TabView(selection: $currentStep){
                        ForEach(0..<onBoardingSteps.count, id:\.self) {it in
                            VStack{
                                Image(onBoardingSteps[it].image)
                                    .resizable()
                                    .frame(width: 250, height: 250)
                                    .padding(.bottom, 40)
                                
                                Text(onBoardingSteps[it].title)
                                    .font(.custom("Poppins-Bold", size: 18))
                                    .foregroundColor(.white)
                                
                                Text(onBoardingSteps[it].description)
                                    .font(.custom("Poppins-Regular", size: 15))
                                    .foregroundColor(.white)
                            }
                            .tag(it)
                        }
                    }
                    .frame(width: 350, height: 350)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .padding(.top, 100)
                    
                    HStack{
                        ForEach(0..<onBoardingSteps.count, id:\.self) { it in
                            if it == currentStep {
                                Circle()
                                    .frame(width: 10.95, height: 10.95)
                                    .foregroundColor(.white)
                            } else {
                                Circle()
                                //                                .stroke(.white)
                                    .frame(width: 10.95, height: 10.95)
                                    .foregroundColor(Color(red: 255/255, green: 161/255, blue: 161/255))
                            }
                        }
                    }
                    .padding(.vertical, 50)
                    
                    Button(action:{
                        if self.currentStep < onBoardingSteps.count - 1 {
                            self.currentStep += 1
                        } else{
                            UserDefaults.standard.set(false, forKey: "isPassOnboarding")
                        }
                        
                        
                    }) {
                        
                        Text(currentStep < onBoardingSteps.count - 1 ? "Next" : "Get Started")
                            .font(.custom("Poppins-SemiBold", size: 15))
                            .frame(width: 183, height: 55)
                            .background(.white)
                            .cornerRadius(10)
                            .foregroundColor(Color("Salmon"))
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Spacer()
                }
            }
            //        .background(Color("Salmon"))
        }
    }
}
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
