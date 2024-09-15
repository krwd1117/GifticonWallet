//
//  IntroView.swift
//  GifticonWallet
//
//  Created by Jeongwan Kim on 9/15/24.
//

import SwiftUI



struct IntroView: View {
    @StateObject var viewModel: IntroViewModel = IntroViewModel()
    
    init() {
        viewModel.checkPermission()
    }
    
    var body: some View {
        VStack {
            Text("IntroView")
        }
        .ignoresSafeArea()
    }
}
