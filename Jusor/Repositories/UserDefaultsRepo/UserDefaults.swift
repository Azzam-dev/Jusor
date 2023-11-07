//
//  UserDefaults.swift
//  Jusor
//
//  Created by Azzam AL-Rashed on 05/11/2023.
//

import Foundation

extension UserDefaults {
    
    func didUserCompleteIntro() -> Bool {
        return bool(forKey: "introCompleted")
    }
    
    func introCompleted() {
        set(true, forKey: "introCompleted")
    }
    
}
