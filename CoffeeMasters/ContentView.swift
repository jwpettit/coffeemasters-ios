//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Jeffrey Pettit on 4/8/23.
//

import SwiftUI

struct ContentView: View {
    
    // This feels to me like it is the equivalent of the Routers in React
    var body: some View {
        TabView {
            Text("Home Page")
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Home Page")
                }
            // Notice how here we just are putting in the component
            OffersPage()
                // Seems these modifiers then create the tabs as children of TabView
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            Text("Order Page")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            Text("Info Page")
                .tabItem {
                    Image(systemName: "info")
                    Text("Info")
                }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
