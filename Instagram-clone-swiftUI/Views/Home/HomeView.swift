//
//  HomeView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        VStack {
            HeaderView()
            ScrollView {
                StoriesView(stories: networkManager.posts)
                Divider()
                ForEach(networkManager.posts) { post in
                    
                    let description = "\(post.gender)\n\(post.species)\n\(post.status)"
                    PostView(name: post.name, imageURL: post.image, likes: Int.random(in: 1...100), description: description)
                }
            }
        }.onAppear {
            networkManager.fetchData()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(networkManager: NetworkManager())
    }
}
