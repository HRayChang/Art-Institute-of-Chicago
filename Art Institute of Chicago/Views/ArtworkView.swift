//
//  ArtworkView.swift
//  Art Institute of Chicago
//
//  Created by Ray Chang on 2024/3/2.
//

import SwiftUI

struct ArtworkView: View {
    let artwork: Artwork
    
    var body: some View {
        NavigationLink {
            
        } label: {
            Text(artwork.title)
        }
    }
}

#Preview {
    ArtworkView(artwork: previewArtwork)
}
