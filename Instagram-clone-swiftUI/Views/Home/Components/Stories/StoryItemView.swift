//
//  StoryItemView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct StoryItemView: View {
    var body: some View {
        VStack {
            Image("dog")
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius(.infinity)
            Text("Your story").font(.caption2).lineSpacing(22)
        }
    }
}

struct StoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoryItemView().previewLayout(.sizeThatFits)
    }
}
