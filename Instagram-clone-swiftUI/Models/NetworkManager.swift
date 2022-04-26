//
//  NetworkManager.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 20/04/22.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [InstagramPost]()
    @Published var searchPhotos = [SearchPhoto]()
    
    func fetchDataPosts() {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else { return }
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if error == nil {
                let decoder = JSONDecoder()
                
                guard let safeData = data else { return }
                
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
        task.resume()
        
    }

    func fetchSearchData(search: String) {
        if search.count < 3 { return }
        
        let apiKey = "563492ad6f917000010000018269bac11b4e480ea26b343f7de49058"
        let urlBase = "https://api.pexels.com/v1/search?query="
        guard let url = URL(string: urlBase + search + "&per_page=50") else { return }
        
        var request = URLRequest(url: url)
        request.setValue(apiKey, forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard error == nil else { return }
            
            let decoder = JSONDecoder()
            guard let safeData = data else { return }
            
            do {
                let searchData = try decoder.decode(SearchResult.self, from: safeData)
                DispatchQueue.main.async {
                    self.searchPhotos = searchData.photos
                }
            } catch {
                print(error)
            }
            
              
        }.resume()
        
    }
}
