//
//  HeaderView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image("logo")
            Spacer()
            Button(action: {}) {
                Image(systemName: "plus.app").foregroundColor(.black)
            }
            Button(action: {}) {
                Image(systemName: "heart").foregroundColor(.black)
            }
            Button(action: {}) {
                Image(systemName: "message").foregroundColor(.black)
            }
        }.padding()
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView().previewLayout(.sizeThatFits)
    }
}
