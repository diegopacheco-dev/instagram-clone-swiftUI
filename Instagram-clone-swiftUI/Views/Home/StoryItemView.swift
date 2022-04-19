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
            Image("dog").cornerRadius(.infinity)
            Text("Your story")
        }.padding()
    }
}

struct StoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoryItemView().previewLayout(.sizeThatFits)
    }
}
