//
//  CommentBox.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 19/04/22.
//

import SwiftUI

struct CommentBox: View {
    var likes: Int
    var description: String
    var imageURL: String
    @State private var commentText: String = ""
    
    var body: some View {
        
        VStack(spacing: 0) {
            Button(action: {}) {
                Text("\(likes) Likes").multilineTextAlignment(.leading)
            }.frame(maxWidth: .infinity, alignment: .leading).foregroundColor(.black)
            Text(description)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 5)
            HStack{
                AsyncImage(url: URL(string: imageURL)) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .frame(width: 24, height: 24, alignment: .center)
                            .cornerRadius(.infinity)
                    case .empty, .failure :
                        Image("no-image")
                            .resizable()
                            .frame(width: 24, height: 24, alignment: .center)
                            .cornerRadius(.infinity)
                    @unknown default:
                        Image("no-image")
                            .resizable()
                            .frame(width: 24, height: 24, alignment: .center)
                            .cornerRadius(.infinity)
                    }
                }
                TextField("Add comment", text: $commentText)
            }
            .padding(.vertical, 5)
        }.padding(.horizontal, 16)
        
    }
}

struct CommentBox_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CommentBox(likes: 20, description: "", imageURL: "").previewLayout(.sizeThatFits)
        }
    }
}
