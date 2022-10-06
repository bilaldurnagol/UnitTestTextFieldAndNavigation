//
//  UnitTestTextFieldAttributeTests.swift
//  UnitTestTextFieldAttributeTests
//
//  Created by Bilal Durnagöl on 4.10.2022.
//

import XCTest
@testable import UnitTestTextFieldAttribute

final class UnitTestTextFieldAttributeTests: XCTestCase {

    var sut: SignupViewController!
    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "SignupViewController") as? SignupViewController
        sut.loadViewIfNeeded()
        
    }

    override func tearDownWithError() throws {
       sut = nil
    }
    
    func testTextField_WhenCreated_HasEmailAdressContentTypeSet() throws {
        let emailTextField = try XCTUnwrap(sut.emailTextField, "Email address UITextField is not connected!")
        XCTAssertEqual(emailTextField.textContentType, .emailAddress, "Email address UITextField does not have an Email Address Content Type set")
    }
    
    func testTextField_WhenCreated_HasEmailKeyboardSet() throws {
        let emailTextField = try XCTUnwrap(sut.emailTextField, "Email address UITextField is not connected!")
        XCTAssertEqual(emailTextField.keyboardType, .emailAddress, "Email address UITextField does not have an Email Address Keyboard set")
    }
    
    func testPasswordTextField_WhenCreated_IsSecureTextEntryField() throws {
        let passwordTextField = try XCTUnwrap(sut.passwordTextField, "Password UITextField is not connected!")
        XCTAssertTrue(passwordTextField.isSecureTextEntry, "Password UITextField does not have an secure text entry")
    }

}
