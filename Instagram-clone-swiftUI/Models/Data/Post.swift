//
//  Post.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 19/04/22.
//

import Foundation

struct PostsData: Decodable {
    var results: [Post]
}

struct Post: Decodable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var status: String
    var species: String
    var gender: String
}
