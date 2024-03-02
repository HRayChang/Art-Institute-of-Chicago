//
//  ArtworkDetailView.swift
//  Art Institute of Chicago
//
//  Created by Ray Chang on 2024/3/2.
//

import SwiftUI

struct ArtworkDetailView: View {
    let artwork: Artwork
    
    var body: some View {
        ScrollView {
            // view
            
            Text(artwork.title)
                .font(.title)
                .padding()
        }
        .navigationTitle("Artwork Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ArtworkDetailView(artwork: previewArtwork)
}
