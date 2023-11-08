//
//  ReduxReducer.swift
//  Jusor
//
//  Created by Azzam AL-Rashed on 05/11/2023.
//
/*
 
 Reducers provide pure functions,
 that based on the current action and the current app state,
 create a new app state.
 
 In order to have a predictable app state,
 it is important that the reducer is always free of side effects,
 it receives the current app state and an action and returns the new app state.
 
 https://reswift.github.io/ReSwift/master/getting-started-guide.html
*/

import ReSwift

func reduxReducer(action: Action, state: ReduxState?) -> ReduxState {
    var state = state ?? ReduxState()

    switch action {
    case let action as AuthUserAction:
        state.user = action.user
        
    default:
        break
    }

    return state
}
