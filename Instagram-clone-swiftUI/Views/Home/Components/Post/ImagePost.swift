//
//  ImagePost.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 19/04/22.
//

import SwiftUI

struct ImagePost: View {
    var imageURL: String
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { phase in
            switch phase {
            case .success(let image):
                image.resizable()
                    .frame(height: 400.0)
                    .scaledToFill()
                    .clipped()
            case .empty, .failure :
                Image("no-image")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 400.0)
            @unknown default:
                Image("no-image")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 400.0)
            }
        }
    }
}

struct ImagePost_Previews: PreviewProvider {
    static var previews: some View {
        ImagePost(imageURL: "").previewLayout(.sizeThatFits)
    }
}
