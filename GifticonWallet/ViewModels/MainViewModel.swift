//
//  MainViewModel.swift
//  GifticonWallet
//
//  Created by Jeongwan Kim on 9/15/24.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var showImagePicker: Bool = false
    @Published var selectedImages: [UIImage]?
    
    init() {
        binding()
    }
    
    private func binding() {
        
    }
}
