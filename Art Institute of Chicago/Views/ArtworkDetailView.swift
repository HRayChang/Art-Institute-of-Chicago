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
            artworkImageView
            
            Text(artwork.title)
                .font(.title)
                .padding()
        }
        .navigationTitle("Artwork Details")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    @ViewBuilder var artworkImageView: some View {
        if let imageId = artwork.imageId,
           let imageURL = URL(string: "https://www.artic.edu/iiif/2/\(imageId)/full/843,/0/default.jpg") {
            AsyncImage(url: imageURL) { image in
                image.resizable()
                .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
        } else {
            Text("Image is not available")
        }
    }
}

#Preview {
    ArtworkDetailView(artwork: previewArtwork)
}
