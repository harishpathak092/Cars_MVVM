//
//  ViewController.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import UIKit

class Dashboard: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func homeButtonPressed(_ sender: Any) {
        Home_Router.shared.route(to: .make, from: self, parameters: nil)
    }
    
}

