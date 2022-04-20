//
//  StoriesView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(1..<9) {_ in
                    StoryItemView()
                }
            }
            .padding(.top, 10)
            .padding(.bottom, 5)
            .padding(.horizontal, 16)
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView().previewLayout(.sizeThatFits)
    }
}
