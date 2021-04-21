//
//  ContentView.swift
//  SPOT
//
//  Created by Tilak Agarwal on 3/14/21.
//

import SwiftUI

struct ContentView: View {
    @State var navigationBarBackButtonHidden = true
    var body: some View {
        TabView {
            Settings()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            ListUIView(text: "")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                        }
            Favorites()
                .tabItem {
                    Image(systemName: "heart.fill")
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
