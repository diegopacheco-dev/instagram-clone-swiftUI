//
//  StoriesView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 22/04/22.
//

import SwiftUI

struct StoriesView: View {
    var progress: CGFloat = 0
    
    var body: some View {
        GeometryReader {geometry in
            ZStack(alignment: .leading) {
                Rectangle().foregroundColor(Color.white.opacity(0.3))
                    .cornerRadius(5)
                Rectangle()
                    .frame(width: geometry.size.width * self.progress, height: nil, alignment: .leading)
                    .foregroundColor(Color.white.opacity(0.9))
                    .cornerRadius(5)
            }
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView().previewLayout(.sizeThatFits)
    }
}
