//
//  FirebaseRepository.swift
//  Jusor
//
//  Created by Azzam AL-Rashed on 05/11/2023.
//

import Foundation
import Firebase

// MARK: - Firebase References
fileprivate let database: DatabaseReference = Database.database().reference()
//fileprivate let cloudStorage: StorageReference = Storage.storage().reference()

// MARK: - Firebase Repository

final class FirebaseRepository {
    static let shared = FirebaseRepository()
    
    
    func configuration() {
        FirebaseApp.configure()
    }
    
}
