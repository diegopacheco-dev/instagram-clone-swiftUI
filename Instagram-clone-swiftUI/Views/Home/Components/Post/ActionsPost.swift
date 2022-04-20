//
//  ActionsPost.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 19/04/22.
//

import SwiftUI

struct ActionsPost: View {
    var body: some View {
        HStack (spacing: 14) {
            Button(action: {}) {
                Image(systemName: "heart").resizable().frame(width: 24, height: 24)
            }.foregroundColor(.black)
            Button(action: {}) {
                Image(systemName: "message").resizable().frame(width: 24, height: 24)
            }.foregroundColor(.black)
            Button(action: {}) {
                Image(systemName: "paperplane").resizable().frame(width: 24, height: 24)
            }.foregroundColor(.black)
            Spacer()
            Button(action: {}) {
                Image(systemName: "bookmark")
                    .resizable().frame(width: 24, height: 24)
            }.foregroundColor(.black)
        }.padding(.horizontal, 16)
            .padding(.vertical, 9)
    }
}

struct ActionsPost_Previews: PreviewProvider {
    static var previews: some View {
        ActionsPost()
    }
}
