//
//  NotificationView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 24/08/22.
//

import SwiftUI

struct NotificationView: View {
    
    init() {
            //Use this if NavigationBarTitle is with Large Font
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.black]

            //Use this if NavigationBarTitle is with displayMode = .inline
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.gray]
        }
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    struct Notif : Identifiable{
        let id = UUID ()
        let dot: String
        let judul: String
        let time: String
        let ava: String
    }

    let notifs = [
        Notif(dot: "dotActive", judul: "You’ve created new split bill", time: "23 Aug 2022 at 09.15 AM", ava: "Avatar4"),
        Notif(dot: "dotActive", judul: "Arthur Flores send you a split bill ", time: "23 Aug 2022 at 09.15 AM", ava: "Avatar2"),
        Notif(dot: "dotIdle", judul: "Jess Randon joinned to bali trip", time: "23 Aug 2022 at 09.15 AM", ava: "Avatar3"),
        Notif(dot: "dotIdle", judul: "Arthur Flores invite you to new trip", time: "23 Aug 2022 at 09.15 AM", ava: "Avatar4")
    ]
    var body: some View {
        NavigationView{
            VStack{
                ForEach(notifs){not in
                    HStack{
                        Image(not.dot)
                            .resizable()
                            .frame(width: 15, height: 15)
                        Spacer()
                        
                        VStack(alignment: .leading){
                            Text(not.judul)
                                .font(.custom("Poppins-SemiBold", size: 15))
                                .foregroundColor(.black)
                            
                            Text(not.time)
                                .font(.custom("Poppins-Regular", size: 13))
                                .foregroundColor(.gray)
                        }
                        .frame(width: 270, alignment: .leading)
                        .padding(.leading)
                        Spacer()
                        Image(not.ava)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.trailing)
                    }
                    .frame(width: 350, height: 48, alignment: .leading)
                }
                
                Spacer()
            }
            .navigationTitle("Notification")
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
