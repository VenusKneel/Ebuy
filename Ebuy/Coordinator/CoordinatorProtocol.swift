//
//  CoordinatorProtocol.swift
//  Ebuy
//
//  Created by Beqa Tabunidze on 13.07.21.
//

import UIKit

protocol CoordinatorProtocol: AnyObject {
        
    init(_ window: UIWindow?, navigationController: UINavigationController?)
    
    func start()
    func popViewController()
}
