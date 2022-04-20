//
//  PostView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct PostView: View {
    var data: Post
    var body: some View {
        VStack (spacing: 0) {
            HeaderPost(username: data.username)
            ImagePost(imageName: data.photoName)
            ActionsPost()
            CommentBox(likes: data.likes)
        }.padding(.bottom, 10)
        
    }
}
/*
struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView().previewLayout(.sizeThatFits)
    }
}
*/
