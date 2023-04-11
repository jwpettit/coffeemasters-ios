//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Jeffrey Pettit on 4/10/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
}
