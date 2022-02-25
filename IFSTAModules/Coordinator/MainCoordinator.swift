//
//  MainCoordinator.swift
//  IFSTAModules
//
//  Created by Mohit Kumar Singh on 25/02/22.
//

import Foundation
import UIKit

open class MainCoordinator: Coordinator {
    public var navigationController: UINavigationController
    
    public init(with _navigationController: UINavigationController) {
        self.navigationController = _navigationController
    }
    
    public func configureRootViewController() {
       
    }
}
