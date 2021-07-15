//
//  AppCoordinator.swift
//  Ebuy
//
//  Created by Beqa Tabunidze on 13.07.21.
//

import UIKit

final class AppCoordinator: CoordinatorProtocol {
    
    // MARK: - Variables
    private var window: UIWindow?
    private var navigationController: UINavigationController?
    
    // MARK: - Initialisation
    init(_ window: UIWindow?, navigationController: UINavigationController?) {
        self.window = window
        self.navigationController = navigationController
        
    }
    
    func start() {
       // let vc = MainViewController.instantiateFromStoryboard()
        let vc = OnboardingViewController.instantiateFromStoryboard()
        vc.coordinator = self
        navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(vc, animated: true)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
//    func navigateToSelectedCountries() {
//        let vc = SelectedCountriesViewController.instantiateFromStoryboard()
//        vc.coordinator = self
//        navigationController?.navigationBar.isHidden = true
//        navigationController?.pushViewController(vc, animated: true)
//    }
    
    func popViewController() {
        navigationController?.popViewController(animated: true)
    }
    
}
