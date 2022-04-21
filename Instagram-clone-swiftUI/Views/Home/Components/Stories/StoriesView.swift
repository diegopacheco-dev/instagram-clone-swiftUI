//
//  StoriesView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct StoriesView: View {
    var stories = [Post]()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 21) {
                ForEach(stories) {story in
                    StoryItemView(name: story.name, imageURL: story.image)
                }
            }
            .padding(.top, 10)
            .padding(.bottom, 5)
            .padding(.trailing, 16)
            .padding(.leading, 25)
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView().previewLayout(.sizeThatFits)
    }
}
