//
//  ContentView.swift
//  GifticonWallet
//
//  Created by Jeongwan Kim on 9/15/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel: MainViewModel = MainViewModel()
    
    var body: some View {
        ZStack {
            ScrollView {
                Text("기프티콘을 간편하게 관리해보세요.")
                    .foregroundStyle(.font)
            }
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        viewModel.showImagePicker.toggle()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.blue)
                    }
                    
                    Spacer()
                        .frame(width: 30)
                }
                
                Spacer()
                    .frame(height: 30)
            }
        }
        .sheet(isPresented: $viewModel.showImagePicker) {
            ImagePicker(
                selectedImages: $viewModel.selectedImages
            )
            .ignoresSafeArea()
        }
    }
}

#Preview {
    MainView()
}
