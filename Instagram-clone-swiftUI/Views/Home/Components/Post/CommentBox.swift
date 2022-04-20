//
//  CommentBox.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 19/04/22.
//

import SwiftUI

struct CommentBox: View {
    var likes: Int = 100
    @State private var commentText: String = ""
    
    var body: some View {
        
        VStack(spacing: 0) {
            Button(action: {}) {
                Text("\(likes) Likes").multilineTextAlignment(.leading)
            }.frame(maxWidth: .infinity, alignment: .leading).foregroundColor(.black)
                .padding(.horizontal, 16)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more ")
                .padding(.horizontal, 16)
                .padding(.vertical, 5)
            HStack{
                Image("photoComment")
                    .frame(width: 24, height: 24, alignment: .center)
                    .cornerRadius(.infinity)
                TextField("Add comment", text: $commentText)
            }.padding(.horizontal, 16)
            .padding(.vertical, 5)
        }
        
    }
}

struct CommentBox_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CommentBox().previewLayout(.sizeThatFits)
        }
    }
}
