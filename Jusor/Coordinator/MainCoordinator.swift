//
//  MainCoordinator.swift
//  Jusor
//
//  Created by Azzam AL-Rashed on 05/11/2023.
//

import UIKit
import SwiftUI

final class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //MARK: Initial View Controller
    func start() {
        let navigationVC = NavigationVC.instantiate()
        
        let homeVC = HomeVC.instantiate()
        let chartsVC = ChartsVC.instantiate()
        let bookmarkVC = BookmarkVC.instantiate()
        let settingsVC = SettingsVC.instantiate()
        
        homeVC.coordinator = self
        chartsVC.coordinator = self
        bookmarkVC.coordinator = self
        settingsVC.coordinator = self
        
        
        navigationVC.coordinator = self
        navigationVC.viewControllers = [homeVC, chartsVC, bookmarkVC, settingsVC]
        
        navigationController.pushViewController(navigationVC, animated: false)
    }
    
    
}
