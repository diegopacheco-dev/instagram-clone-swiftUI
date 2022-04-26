//
//  ActionsPost.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 19/04/22.
//

import SwiftUI

struct ActionsPost: View {
    
    let buttonsIcons = ["heart", "message", "paperplane", "bookmark"]
    
    var body: some View {
        HStack (spacing: 14) {
            ForEach(buttonsIcons, id: \.self) {buttonIcon in
                Button(action: {}) {
                    Image(systemName: buttonIcon).resizable().frame(width: 24, height: 24)
                }.foregroundColor(.black)
                if buttonIcon == "paperplane" {
                    Spacer()
                }
            }
        }.padding(.horizontal, 16)
            .padding(.vertical, 9)
    }
}

struct ActionsPost_Previews: PreviewProvider {
    static var previews: some View {
        ActionsPost()
    }
}
