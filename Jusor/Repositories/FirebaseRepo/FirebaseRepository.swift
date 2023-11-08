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
    
    func anonymousAuth() {
        if let user = Auth.auth().currentUser {
            ReduxStore.dispatch(AuthUserAction(user: user))
        } else {
            Auth.auth().signInAnonymously { authResult, error in
                guard let user = authResult?.user else { return }
                ReduxStore.dispatch(AuthUserAction(user: user))
            }
        }
    }
    
}
