//
//  ContentView.swift
//  SPOT
//
//  Created by Tilak Agarwal on 3/14/21.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        TabView {
            Settings()
                .tabItem {
                    Image("Settings")
                    Text("Settings")
                }
            ListUIView(text: "")
                        .tabItem {
                            Image("Locations")
                            Text("Locations")
                        }
            Favorites()
                .tabItem {
                    Image("Favorites")
                    Text("Favorites")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
