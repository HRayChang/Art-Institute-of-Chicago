//
//  ContentView.swift
//  Art Institute of Chicago
//
//  Created by Ray Chang on 2024/3/1.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ArtworkViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.artworks) { artwork in
                ArtworkView(artwork: artwork)
            }
            .navigationTitle("Artwork")
            .onAppear {
                viewModel.fetchArtwork()
            }
        }
    }
}
    
#Preview {
    ContentView()
}
