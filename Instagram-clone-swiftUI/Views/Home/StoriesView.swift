//
//  StoriesView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(1..<9) {_ in
                    StoryItemView()
                }
            }
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView().previewLayout(.sizeThatFits)
    }
}
