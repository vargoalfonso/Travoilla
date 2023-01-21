//
//  OverviewView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 18/08/22.
//

import SwiftUI

struct Expense{
    let pict: String
    let category: String
    let description: String
    let day: String
    let exp: String
}

let expenses = [
    Expense(pict: "Transportation", category: "Transportation", description: "Grab Car", day: "Today", exp: "-IDR 100,000"),
    Expense(pict: "Food", category: "Food & Beverages", description: "Seblak Mang Jeki", day: "Today", exp: "-IDR 80,000"),
    Expense(pict: "Attraction", category: "Attractions", description: "Trans Studio Mall", day: "Yesterday", exp: "-IDR 180,000"),
    Expense(pict: "Shopping", category: "Shopping", description: "Kartika Sari", day: "13 Aug 2022", exp: "-IDR 340,000")
]

struct OverviewView: View {
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
                            
                            CardviewView()
                            
                            Transactions()
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView()
    }
}

struct Transactions: View{
    @State var Clicked = false
    @Environment(\.dismiss) var dismiss
    var body: some View{
        VStack{
            HStack{
                Text("Last Transaction")
                    .font(.system(size: 20, weight: .bold))
                
                Spacer()
                
                NavigationLink(destination: PersonalExpenseView()) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 126, height: 38)
                            .foregroundColor(Color("Salmon"))
                        
                        Text("+ Add Expense")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.white)
                    }
                }
                
                
//                .sheet(isPresented: $Clicked) {
//
//                }
            }
            
            Expenditure()
        }
        .frame(width: 350)
        .padding(.top, 7)
    }
}

struct Expenditure: View{
    var body: some View{
        ForEach(0..<expenses.count, id:\.self){a in
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 350, height: 80)
                    .foregroundColor(.white)
                
                
                HStack{
                    Image(expenses[a].pict)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.leading)
                    
                    
                    
                    VStack (alignment: .leading){
                        Text(expenses[a].category)
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                            .padding(.bottom, 1)
                        
                        Text(expenses[a].description)
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .padding(.leading, 5)
                    
                    Spacer()
                    
                    VStack (alignment: .trailing){
                        Text(expenses[a].day)
                            .font(.system(size: 12))
                            .foregroundColor(Color("Salmon"))
                            .padding(.bottom, 1)
                        
                        Text(expenses[a].exp)
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .padding(.trailing)
                }
            }
        }
    }
}
