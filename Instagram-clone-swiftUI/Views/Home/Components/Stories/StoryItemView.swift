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
    
    static let color0 = Color(red: 222/255, green: 0/255, blue: 70/255);
    static let color1 = Color(red: 247/255, green: 163/255, blue: 75/255);
    
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
                                        gradient: Gradient(colors: [StoryItemView.color0, StoryItemView.color1]), startPoint: .top, endPoint: .bottom)
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
