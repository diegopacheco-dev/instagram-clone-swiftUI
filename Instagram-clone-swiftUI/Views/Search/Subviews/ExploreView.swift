//
//  ExploreView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 21/04/22.
//

import SwiftUI

struct ExploreView: View {
    
    //@ObservedObject private var networkManager = NetworkManager()
    @ObservedObject private var searchScreenModel = SearchScreenModel()
    var post: InstagramPost
    var description: String {
        var text = ""
        if !post.gender.isEmpty {
            text += post.gender
        }
        if !post.species.isEmpty {
            text += "\n\(post.species)"
        }
        if !post.status.isEmpty {
            text += "\n\(post.status)"
        }
        return text
    }
    
    var body: some View {
        
        ScrollView {
            PostView(name: post.name, imageURL: post.image, likes: Int.random(in: 1...100), description: description)
            
            ForEach(searchScreenModel.result) { post in
                
                PostView(name: post.photographer, imageURL: post.src.medium, likes: Int.random(in: 1...100), description: post.alt)
                
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}


struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView(post: InstagramPost(id: 10, name: "diego", image: "", status: "test", species: "test", gender: "test")).previewLayout(.sizeThatFits)
    }
}

