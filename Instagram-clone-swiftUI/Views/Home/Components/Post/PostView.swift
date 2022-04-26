//
//  PostView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct PostView: View {
    var name: String
    var imageURL: String
    var likes: Int
    var description: String
    
    var body: some View {
        VStack (spacing: 0) {
            HeaderPost(username: name)
            ImagePost(imageURL: imageURL)
                .padding(.vertical, 10)
            ActionsPost()
                .padding(.top, 10)
            CommentBox(likes: likes, description: description, imageURL: imageURL)
        }.padding(.bottom, 10)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(name: "username", imageURL: "", likes: 20, description: "").previewLayout(.sizeThatFits)
    }
}

