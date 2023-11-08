//
//  ReduxActions.swift
//  Jusor
//
//  Created by Azzam AL-Rashed on 05/11/2023.
//
/*
 
 Actions are a declarative way of describing a state change.
 Actions don't contain any code, they are consumed by the store and forwarded to reducers.
 Reducers will handle the actions by implementing a different state change for each action.
 
*/


import ReSwift

// MARK: User Actions
struct AuthUserAction: Action { let user: User }
