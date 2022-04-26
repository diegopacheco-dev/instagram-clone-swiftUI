//
//  SearchScreenModel.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 26/04/22.
//

import Foundation

class SearchScreenModel: ObservableObject {
    
    @Published var searchWord: String = "city"

    @Published var result = [SearchPhoto]()
    
    func fetchSearchData() {
        
        let apiKey = "563492ad6f917000010000018269bac11b4e480ea26b343f7de49058"
        let urlBase = "https://api.pexels.com/v1/search?query="
        guard let url = URL(string: urlBase + self.searchWord + "&per_page=50") else { return }
        
        var request = URLRequest(url: url)
        request.setValue(apiKey, forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard error == nil else { return }
            
            let decoder = JSONDecoder()
            guard let safeData = data else { return }
            
            do {
                let searchData = try decoder.decode(SearchResult.self, from: safeData)
                DispatchQueue.main.async {
                    self.result = searchData.photos
                }
            } catch {
                print(error)
            }
            
              
        }.resume()
        
    }
}
