//
//  Post.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 19/04/22.
//

import Foundation

struct Post {
    var username: String
    var photoName: String
    var likes: Int
    var description: String
}

extension Post: Hashable {}
