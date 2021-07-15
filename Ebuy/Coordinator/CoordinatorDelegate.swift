//
//  CoordinatorDelegate.swift
//  Ebuy
//
//  Created by Beqa Tabunidze on 13.07.21.
//

import UIKit

protocol CoordinatorDelegate: UIViewController {
    var coordinator: CoordinatorProtocol? { get set }
}
