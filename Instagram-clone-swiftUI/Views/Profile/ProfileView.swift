//
//  ProfileView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 22/04/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            HStack {
                Image("dog")
                    .resizable()
                    .frame(width: 85, height: 85, alignment: .center)
                    .scaledToFill()
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 3)
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color("redCustom"), Color("orangeCustom")]), startPoint: .top, endPoint: .bottom)
                            ).padding(-5)
                    )
                Spacer()
                HStack(spacing: 32) {
                    VStack(spacing: 2) {
                        Text("3000")
                            .font(.callout)
                            .fontWeight(.bold)
                        Text("Post")
                            .font(.footnote)
                            .fontWeight(.regular)
                    }
                    VStack(spacing: 2) {
                        Text("3000")
                            .font(.callout)
                            .fontWeight(.bold)
                        Text("Followers")
                            .font(.footnote)
                            .fontWeight(.regular)
                    }
                    VStack(spacing: 2) {
                        Text("3000")
                            .font(.callout)
                            .fontWeight(.bold)
                        Text("Following")
                            .font(.footnote)
                            .fontWeight(.regular)
                    }
                }
            }.padding(16)
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
