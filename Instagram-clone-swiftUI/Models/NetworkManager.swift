//
//  NetworkManager.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 20/04/22.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://rickandmortyapi.com/api/character") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let postsData = try decoder.decode(PostsData.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = postsData.results
                            }
                        } catch {
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
    }
    
}
