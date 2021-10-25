//
//  Item.swift
//  CustomGrid
//
//  Created by Sopnil Sohan on 25/10/21.
//

import SwiftUI

struct Item: Identifiable {
    
    let id = UUID()
    let titel: String
    let image: String
    let imageColor: Color
    
}
let items = [
    Item(titel: "User", image: "user", imageColor: .orange),
    Item(titel: "Money", image: "money", imageColor: .green),
    Item(titel: "Bank", image: "bank", imageColor: .black),
    Item(titel: "Vacation", image: "vacation", imageColor: .green),
    Item(titel: "Home", image: "home", imageColor: .brown),
    Item(titel: "Charts", image: "chart", imageColor: .purple),
    Item(titel: "Support", image: "support", imageColor: .blue),
]

