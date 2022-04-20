//
//  HomeView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct HomeView: View {
    var homeManager = HomeManager()
    var body: some View {
        VStack {
            HeaderView()
            ScrollView {
                StoriesView()
                Divider()
                ForEach(homeManager.posts, id: \.self) { post in
                    PostView(data: post)
                }
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
