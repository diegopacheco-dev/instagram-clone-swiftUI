//
//  ImagePost.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 19/04/22.
//

import SwiftUI

struct ImagePost: View {
    var imageName: String = "photo1"
    var body: some View {
        Image(imageName).resizable().scaledToFill().frame(height: 400.0).clipped()
    }
}

struct ImagePost_Previews: PreviewProvider {
    static var previews: some View {
        ImagePost().previewLayout(.sizeThatFits)
    }
}
