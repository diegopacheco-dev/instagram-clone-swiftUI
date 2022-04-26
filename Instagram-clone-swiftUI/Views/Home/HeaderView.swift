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
            ForEach(["plus.app", "heart", "message"], id: \.self) {imageName in
                NavigationLink {
                    Text("Destination")
                } label: {
                    Image(systemName: imageName)
                }

            }
        }.padding()
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView().previewLayout(.sizeThatFits)
    }
}
