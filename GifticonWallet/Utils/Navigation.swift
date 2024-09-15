//
//  Navigation.swift
//  GifticonWallet
//
//  Created by Jeongwan Kim on 9/15/24.
//

import UIKit
import SwiftUI

class Navigation {
    static private func findRootWindow() -> UIWindow? {
        guard
            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
            let window = windowScene.windows.first
        else {
            return nil
        }
        return window
    }
    
    static func changeRootViewController<T: View>(view: T) {
        let window = findRootWindow()
        window?.rootViewController = UIHostingController(rootView: view)
        window?.makeKeyAndVisible()
    }
}
