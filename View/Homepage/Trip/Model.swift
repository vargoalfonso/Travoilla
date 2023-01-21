//
//  Model.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 10/08/22.
//

import Foundation
import SwiftUI

struct Trip: Identifiable{
    var id: Int
    var title: String
    var date: String
    var place: String
    var expense: String
    var budget: String
}

let trips = [
    Trip(id: 0, title: "Trip to Bali", date: "Aug 1 - 8, 2022", place: "2", expense: "3.500.000", budget: "5.000.000"),
    Trip(id: 1, title: "Trip to Jakarta Barat", date: "Dec 1 - 10, 2022", place: "3", expense: "0", budget: "4.000.000"),
    Trip(id: 2, title: "Trip to Bangkok", date: "Aug 1, 2022", place: "5", expense: "2.500.000", budget: "5.000.000")
]

let histories = [
    Trip(id: 0, title: "Trip to Zimbabwe", date: "Dec 8 - 19, 2022", place: "5", expense: "40.000.000", budget: "40.000.000"),
    Trip(id: 1, title: "Trip to Hungary", date: "Aug 1 - 20, 2022", place: "5", expense: "12.500.000", budget: "35.000.000")
]
