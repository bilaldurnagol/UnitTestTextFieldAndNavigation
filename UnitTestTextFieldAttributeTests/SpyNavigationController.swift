//
//  SpyNavigationController.swift
//  UnitTestTextFieldAttributeTests
//
//  Created by Bilal Durnagöl on 4.10.2022.
//

import UIKit

class SpyNavigationController: UINavigationController {
    
    var pushedViewController: UIViewController!
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        pushedViewController = viewController
    }
}
