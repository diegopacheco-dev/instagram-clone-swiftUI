//
//  PostView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack {
            HStack {
                Image("dog")
                Spacer()
                Image(systemName: "ellipsis")
            }.padding()
            Image("photoPost")
            VStack (alignment: .leading){
                HStack {
                    Button(action: {}) {
                        Image(systemName: "heart")
                    }.foregroundColor(.black)
                    Button(action: {}) {
                        Image(systemName: "message")
                    }.foregroundColor(.black)
                    Button(action: {}) {
                        Image(systemName: "paperplane")
                    }.foregroundColor(.black)
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "bookmark")
                    }.foregroundColor(.black)
                }.padding()
                Button(action: {}) {
                    Text("100 Likes")
                }.foregroundColor(.black)
                    .padding()
            }
        }

    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView().previewLayout(.sizeThatFits)
    }
}
