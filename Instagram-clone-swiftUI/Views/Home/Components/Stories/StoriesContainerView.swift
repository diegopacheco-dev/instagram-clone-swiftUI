//
//  StoriesView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct StoriesContainerView: View {
    @State var showingStories = false
    
    var stories = [InstagramPost]()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 21) {
                //ForEach(stories) {story in
                    Button {
                        showingStories.toggle()
                    } label: {
                        StoryItemView(name: stories.first?.name ?? "", imageURL: stories.first?.image ?? "")
                    }.sheet(isPresented: $showingStories) {
                        StoriesTestView(showingStories: $showingStories)
                    }
                //}
            }
            .padding(.top, 10)
            .padding(.bottom, 5)
            .padding(.trailing, 16)
            .padding(.leading, 25)
        }
    }
}

struct StoriesContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesContainerView().previewLayout(.sizeThatFits)
    }
}
