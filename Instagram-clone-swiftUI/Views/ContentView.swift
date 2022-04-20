//
//  ContentView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill").foregroundColor(.red)
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "play.rectangle")
                        .foregroundColor(.black)
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "bag.fill")
                        .foregroundColor(.black)
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "person.circle")
                }
        }.accentColor(.black)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
