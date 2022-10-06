//
//  ViewController.swift
//  UnitTestTextFieldAttribute
//
//  Created by Bilal Durnagöl on 4.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBAction
    
    @IBAction func tappedLogin(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

