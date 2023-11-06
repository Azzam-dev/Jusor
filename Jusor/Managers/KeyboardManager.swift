//
//  KeyboardManager.swift
//  Jusor
//
//  Created by Azzam AL-Rashed on 05/11/2023.
//

import IQKeyboardManagerSwift

final class KeyboardManager {
    static let shared = KeyboardManager()
    func configuration() {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.enableAutoToolbar = false
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
    }
}
