//
//  ContentView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected = 0
    let gradient = LinearGradient(colors: [.orange, .green],
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing)
    var body: some View {
        
        TabView(selection: $selected)  {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
                
            }
            .tabItem {
                if selected == 0 {
                    Image("home-icon-fill")
                } else {
                    Image("home-icon")
                }
            }.tag(0)
            NavigationView {
                SearchView()
                    .navigationTitle("")
                    .navigationBarHidden(true)
                
            }
            .tabItem {
                if selected == 1 {
                    Image("search-icon-fill")
                } else {
                    Image("search-icon")
                }
            }
            .tag(1)
            NavigationView {
                Text("The Last Tab")
                
            }.tabItem {
                if selected == 2 {
                    Image("rels-icon-fill")
                } else {
                    Image("rels-icon")
                }
            }
            .tag(2)
            NavigationView {
                Text("Another Tab")
                
            }
            .tabItem {
                if selected == 3 {
                    Image("bag-icon-fill")
                } else {
                    Image("bag-icon")
                }
            }
            .tag(3)
            NavigationView {
                ProfileView()
                
            }.tabItem {
                if selected == 4 {
                    Image("user-icon-fill")
                } else {
                    Image("user-icon")
                }
            }
            .tag(4)
            
        }.foregroundColor(.black)
            .onAppear() {
                UITabBar.appearance().barTintColor = .white
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
