//
//  ViewController.swift
//  SegueExtension
//
//  Created by Shibili Areekara on 18/11/21.
//

import UIKit

class FirstViewController: UIViewController, SegueHandler {

    enum SegueIdentifier: String {
        case goToSecondVC = "GoToSecondVC"
        case goToThirdVC = "GoToThirdVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func goToSecondVC(_ sender: Any) {
        self.performSegue(withIdentifier: SegueIdentifier.goToSecondVC.rawValue, sender: self)
    }
    
    @IBAction func goToThirdVC(_ sender: Any) {
        self.performSegue(withIdentifier: SegueIdentifier.goToThirdVC.rawValue, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segueIdentifier(for: segue) {
        case .goToSecondVC:
            print("SecondVC")
        case .goToThirdVC:
            print("ThirdVC")
        }
        
    }

}

