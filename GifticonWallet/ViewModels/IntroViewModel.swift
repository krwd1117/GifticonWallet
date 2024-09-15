//
//  IntroViewModel.swift
//  GifticonWallet
//
//  Created by Jeongwan Kim on 9/15/24.
//

import Foundation
import PhotosUI

class IntroViewModel: ObservableObject {
    
    // 사진 권한 확인
    func checkPermission() {
        let status = PHPhotoLibrary.authorizationStatus()
        
        switch status {
        case .authorized:
            moveToMainView()
        case .notDetermined:
            // 권한 요청
            PHPhotoLibrary.requestAuthorization { [weak self] newStatus in
                guard let self else { return }
                if newStatus == .authorized {
                    DispatchQueue.main.async {
                        self.moveToMainView()
                    }
                } else if newStatus == .limited {
                    DispatchQueue.main.async {
                        self.moveToMainView()
                    }
                }
            }
        case .denied, .restricted:
            print("denied || restricted")
        case .limited:
            print("limited")
        @unknown default:
            print("default")
        }
    }
    
    private func moveToMainView() {
        Navigation.changeRootViewController(view: MainView())
    }
}
