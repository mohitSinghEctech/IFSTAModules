//
//  CoordinatorBoard.swift
//  IFSTAModules
//
//  Created by Mohit Kumar Singh on 25/02/22.
//

import Foundation
import UIKit

public protocol CoordinatorBoard: UIViewController {
    
    
    
}

extension CoordinatorBoard {
    
    static func instantiateFromStoryboard() -> Self {
        let storyboard  = UIStoryboard(name: "Main", bundle: Bundle.main)
        let id = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
