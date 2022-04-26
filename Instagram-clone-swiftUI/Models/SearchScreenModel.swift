//
//  SearchScreenModel.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 26/04/22.
//

import Foundation

class SearchScreenModel {
    
    @Published var searchWord: String = ""

    private lazy var photos: AnyPublisher<[SearchPhoto], Never> = {
      $username
        .flatMap { username in
          self.authenticationService.checkUserNameAvailable(userName: username)
        }
        .eraseToAnyPublisher()
    }()
    
    
    
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
                return searchData.photos
            } catch {
                print(error)
            }
            
              
        }.resume()
        
    }
}
