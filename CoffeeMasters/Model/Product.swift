//
//  Product.swift
//  CoffeeMasters
//
//  Created by Jeffrey Pettit on 4/9/23.
//

import Foundation

struct Product {
    var id: Int
    var name: String
    var description: String?
    var price: Double
    var image: String = ""
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
