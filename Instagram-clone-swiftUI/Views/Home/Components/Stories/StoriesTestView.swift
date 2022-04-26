//
//  StoriesTestView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 22/04/22.
//

import SwiftUI

struct StoriesTestView: View {
    
    @Binding var showingStories: Bool
    
    let imageNames: [String] = ["rick1", "rick2", "rick3"]
    
    @ObservedObject var storyTimer: StoryTimer = StoryTimer(items: 3, interval: 3.0)
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                Image(self.imageNames[Int(self.storyTimer.progress)])
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: nil, alignment: .center)
                HStack(alignment: .center, spacing: 4) {
                    ForEach(self.imageNames.indices) { x in
                        StoriesView(progress: min( max( (CGFloat(self.storyTimer.progress) - CGFloat(x)), 0.0) , 1.0) )
                            .frame(width: nil, height: 3, alignment: .leading)
                            .animation(.linear)
                    }
                }.padding()
                HStack(alignment: .center, spacing: 0) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            self.storyTimer.advance(by: -1)
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            self.storyTimer.advance(by: 1)
                    }
                }
            }
            .onAppear { self.storyTimer.start(endImages: $showingStories) }
            .onDisappear {
                self.storyTimer.pause()
            }
        }.navigationBarHidden(true)
    }
    
}
/*
struct StoriesTestView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesTestView()
    }
}
*/
