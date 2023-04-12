//
//  Category.swift
//  CoffeeMasters
//
//  Created by Jeffrey Pettit on 4/9/23.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}
