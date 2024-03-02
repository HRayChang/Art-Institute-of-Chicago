//
//  ArtworkViewModel.swift
//  Art Institute of Chicago
//
//  Created by Ray Chang on 2024/3/2.
//

import Combine
import Foundation

class ArtworkViewModel: ObservableObject {
    @Published private(set) var artworks = [Artwork]()
    private var cancellables = Set<AnyCancellable>()
    private let jsonDecoder = JSONDecoder()
    
    
}
