//
//  SearchView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 21/04/22.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject private var networkManager = NetworkManager()
    @State var searchText: String = ""
    private var gridItemLayout = [GridItem(spacing: 1), GridItem(spacing: 1), GridItem(spacing: 1)]

    var body: some View {
        ScrollView {
            //HeaderSearchView(searchText: "")
            HStack {
                Image("search-icon")
                TextField(text: $searchText) {
                    Text("Search")
                }.onChange(of: searchText) { newValue in
                    networkManager.fetchSearchData(search: searchText)
                }
            }
            .padding(7)
            .background(Color("lightgray"))
                .cornerRadius(10)
                .padding(.vertical,5)
                .padding(.horizontal, 10)
            Spacer()
            LazyVGrid(columns: gridItemLayout, spacing: 1) {
                ForEach(networkManager.searchPhotos) { photo in
                    
                    NavigationLink(destination: ExploreView(post: InstagramPost(id: photo.id, name: photo.photographer, image: photo.src.medium, status: "", species: "", gender: photo.alt)), label: {
                    AsyncImage(url: URL(string: photo.src.medium)) { phase in
                            switch phase {
                            case .success(let image):
                                image
                                    .resizable()
                                    .frame(height:UIScreen.main.bounds.width / 3)
                                    .padding(.vertical, 1)
                                    .clipped()
                            case .empty, .failure :
                                Image("no-image")
                                    .resizable()
                                    .scaledToFill()
                            @unknown default:
                                Image("no-image")
                                    .resizable()
                                    .scaledToFill()
                            }
                        }
                    })
                    .navigationTitle("Explore")
                }
            }
        }
        .onAppear{
            networkManager.fetchSearchData(search: "city")
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
