//
//  NavigationTests.swift
//  UnitTestTextFieldAttributeTests
//
//  Created by Bilal Durnagöl on 4.10.2022.
//

import XCTest
@testable import UnitTestTextFieldAttribute

final class NavigationTests: XCTestCase {
    
    var sut: ViewController!
    var navigationController: UINavigationController!
    
    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        sut.loadViewIfNeeded()
        navigationController = UINavigationController(rootViewController: sut)
        
    }
    
    override func tearDownWithError() throws {
        sut = nil
        navigationController = nil
    }
    
    func testNextViewButton_WhenTapped_SignupViewControllerIsPushed() {
        
        let myPredicate = NSPredicate { input, _ in
            return (input as? UINavigationController)?.topViewController is SignupViewController
        }

        expectation(for: myPredicate, evaluatedWith: navigationController)

        sut.loginButton.sendActions(for: .touchUpInside)
        
        waitForExpectations(timeout: 2)
        
    }
    
    func testNextViewButton_WhenTapped_SignupViewControllerIsPushed_V2() {
        
        sut.loginButton.sendActions(for: .touchUpInside)
        
        RunLoop.current.run(until: .now)
        
        guard let _ = navigationController.topViewController as? SignupViewController else {
            XCTFail()
            return
        }
    }
    
    func testNextViewButton_WhenTapped_SignupViewControllerIsPushed_V3() {
        let spyNavigationController = SpyNavigationController(rootViewController: sut)
        sut.loginButton.sendActions(for: .touchUpInside)
        
        guard let _ = spyNavigationController.pushedViewController as? SignupViewController else {
            XCTFail()
            return
        }
    }
    
}
