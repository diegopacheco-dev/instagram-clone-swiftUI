//
//  storyTimer.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 22/04/22.
//

import Foundation
import Combine
import SwiftUI

class StoryTimer: ObservableObject {
    @Published var progress: Double
    private var interval: TimeInterval
    private var max: Int
    private let publisher: Timer.TimerPublisher
    private var cancellable: Cancellable?
    
    init(items: Int, interval: TimeInterval) {
        self.max = items
        self.progress = 0
        self.interval = interval
        self.publisher = Timer.publish(every: 0.1, on: .main, in: .default)
    }
    
    func start(endImages: Binding<Bool>) {
        self.cancellable = self.publisher.autoconnect().sink(receiveValue: {  _ in
            var newProgress = self.progress + (0.1 / self.interval)
            if Int(newProgress) >= self.max {
                newProgress = 0
                self.pause()
                endImages.wrappedValue.toggle()
            }
            print(newProgress)
            self.progress = newProgress
        })
    }
    
    func advance(by number: Int) {
        let newProgress = Swift.max((Int(self.progress) + number) % self.max , 0)
        if newProgress >= max {
            self.pause()
        }
        self.progress = Double(newProgress)
    }
    
    func pause() {
        self.publisher.connect().cancel()
    }
}
