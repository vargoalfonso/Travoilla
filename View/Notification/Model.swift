//
//  Model.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 24/08/22.
//

import Foundation

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
