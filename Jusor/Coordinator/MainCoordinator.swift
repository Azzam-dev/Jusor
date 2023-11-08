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
        let mainSettingsVC = MainSettingsVC.instantiate()
        
        homeVC.coordinator = self
        chartsVC.coordinator = self
        bookmarkVC.coordinator = self
        mainSettingsVC.coordinator = self
        
        
        navigationVC.coordinator = self
        navigationVC.viewControllers = [homeVC, chartsVC, bookmarkVC, mainSettingsVC]
        
        navigationController.pushViewController(navigationVC, animated: false)
    }
    
    //MARK: Main Settings
    func viewCredits() {
        let vc = CreditsVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
    func viewAboutUs() {
        let vc = AboutUsVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
    func viewTermsOfUse() {
        let vc = TermsOfUseVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewPrivacyPolicy() {
        let vc = PrivacyPolicyVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewSendFeedback() {
        let vc = SendFeedbackVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewSupport() {
        let vc = SupportVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewHelp() {
        let vc = HelpVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewWhatsNewVC() {
        let vc = WhatsNewVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
    
}
