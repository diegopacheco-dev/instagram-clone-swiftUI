//
//  HeaderPost.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 19/04/22.
//

import SwiftUI

struct HeaderPost: View {
    
    var username: String = "Ruffles"
    
    var body: some View {
        HStack {
            Image("dog").resizable().frame(width: 30, height: 30, alignment: .center).aspectRatio(contentMode: .fill).cornerRadius(.infinity)
            Text(username).bold().font(.footnote)
            Spacer()
            Image(systemName: "ellipsis")
        }.padding(.horizontal, 16)
            .padding(.vertical, 10)    }
}

struct HeaderPost_Previews: PreviewProvider {
    static var previews: some View {
        HeaderPost()
    }
}
