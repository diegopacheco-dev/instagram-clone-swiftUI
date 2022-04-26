//
//  HeaderSearchView.swift
//  Instagram-clone-swiftUI
//
//  Created by Diego on 21/04/22.
//

import SwiftUI

struct HeaderSearchView: View {
    //@ObservedObject private var networkManager = NetworkManager()
    @State var searchText: String 
    var body: some View {
        HStack {
            Image("search-icon")
            TextField(text: $searchText) {
                Text("Search")
            }
            Button(action: {
                //networkManager.fetchSearchData(search: searchText)
            }) {
                Text("Buscar")
            }
        }
        .padding(7)
        .background(Color("lightgray"))
    }
}

struct HeaderSearchView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSearchView(searchText: "").previewLayout(.sizeThatFits)
    }
}
