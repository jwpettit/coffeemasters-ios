//
//  OrdersPage.swift
//  CoffeeMasters
//
//  Created by Jeffrey Pettit on 4/9/23.
//

import SwiftUI

struct OrdersPage: View {
    
    @State var name: String = ""
    @State var phone: String = ""
    
    // Bring the singleton that was injected in the app
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        
        NavigationView {
            if cartManager.cart.count == 0 {
                Text("Your order is empty")
                    .navigationTitle("Your Order")
            } else {
                List {
                    Section("ITEMS") {
                        ForEach(cartManager.cart, id:\.0.id) { item in
                            OrderItem(item: item)
                        }
                    }.listRowBackground(Color("Background"))
                    
                    Section("YOUR DETAILS") {
                        VStack {
                            TextField("Your Name", text: $name)
                                .textFieldStyle(.roundedBorder)
                            Spacer().frame(height: 20)
                            TextField("Your Phone #", text: $phone)
                                .keyboardType(.phonePad)
                                .textFieldStyle(.roundedBorder)
                        }.padding(.top)
                            .padding(.bottom)
                    }.listRowBackground(Color("Background"))
                    
                    Section() {
                        HStack {
                            Spacer()
                            Text("Total")
                            Spacer()
                            Text("$ \(cartManager.total(), specifier: "%.2f")")
                                .bold()
                            Spacer()
                        }
                    }.listRowBackground(Color.clear)
                    
                }
            }
        }
    }
}

struct OrdersPage_Previews: PreviewProvider {
    static var previews: some View {
        OrdersPage()
            .environmentObject(CartManager())
    }
}
