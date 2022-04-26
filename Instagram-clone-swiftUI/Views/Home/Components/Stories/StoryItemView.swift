//
//  StoryItemView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 18/04/22.
//

import SwiftUI

struct StoryItemView: View {
    var name: String
    var imageURL: String
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: imageURL)) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60, alignment: .center)
                        .cornerRadius(.infinity)
                        .overlay(
                            Circle()
                                .stroke(lineWidth: 3)
                                .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color("redCustom"), Color("orangeCustom")]), startPoint: .top, endPoint: .bottom)
                                ).padding(-5)
                        )
                case .empty, .failure :
                    Image("no-image")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60, alignment: .center)
                        .cornerRadius(.infinity)
                @unknown default:
                    Image("no-image")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60, alignment: .center)
                        .cornerRadius(.infinity)
                }
            }
                
            Text(name).font(.caption2).lineSpacing(22).frame(width: 60, height: 25, alignment: .center)
        }
    }
}

struct StoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoryItemView(name: "hola hola hola hola hola", imageURL: "").previewLayout(.sizeThatFits)
    }
}
