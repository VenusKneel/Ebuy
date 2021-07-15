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
    
    func navigateToAuth() {
        let vc = AuthMethodViewController.instantiateFromStoryboard()
        vc.coordinator = self
        navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(vc, animated: true)
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.isTranslucent = true
    }
    
    func navigateToSignIn() {
        
        let vc = SignInViewController.instantiateFromStoryboard()
        vc.coordinator = self
        navigationController?.navigationBar.isHidden = false
        navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.navigationBar.tintColor = UIColor.darkGray;
        self.navigationController!.navigationBar.isTranslucent = false
    }
    
    func navigateToSignUp() {
        let vc = SignUpViewController.instantiateFromStoryboard()
        vc.coordinator = self
        navigationController?.navigationBar.isHidden = false
        navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.navigationBar.tintColor = UIColor.darkGray;
        self.navigationController!.navigationBar.isTranslucent = false
    }
    
    func popViewController() {
        navigationController?.popViewController(animated: true)
    }
    
}
