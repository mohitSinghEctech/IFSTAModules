//
//  Coordinator.swift
//  IFSTAModules
//
//  Created by Mohit Kumar Singh on 25/02/22.
//

import UIKit

public protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    func configureRootViewController() // also known as start
//    var childCoordinators: [Coordinator] { get set }
}
