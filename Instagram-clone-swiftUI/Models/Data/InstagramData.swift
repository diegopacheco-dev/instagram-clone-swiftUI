//
//  Post.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 19/04/22.
//

import Foundation

struct PostsData: Decodable {
    var results: [InstagramPost]
}

struct InstagramPost: Decodable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var status: String
    var species: String
    var gender: String
}

struct InstagramStory: Identifiable {
    let id: Int
    let name: String
    let perfilImage: String
    let images: [String]
}

struct SearchResult: Decodable {
    let photos: [SearchPhoto]
}

struct SearchPhoto: Decodable, Identifiable {
    let id: Int
    let src: Src
    let photographer: String
    let alt: String
}

struct Src: Decodable {
    let medium: String
}
