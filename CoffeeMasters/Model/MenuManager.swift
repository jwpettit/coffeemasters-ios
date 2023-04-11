//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Jeffrey Pettit on 4/10/23.
//

import Foundation

class MenuManager: ObservableObject {
    @Published var menu: [Category] = [
        Category(name: "HOT COFFEE", products: [
            Product(id: 0, name: "", price: 1.25, image: ""),
            Product(id: 0, name: "", price: 1.25, image: ""),
            Product(id: 0, name: "", price: 1.25, image: ""),
            Product(id: 0, name: "", price: 1.25, image: ""),
            Product(id: 0, name: "", price: 1.25, image: "")
        ])
    ]
}
