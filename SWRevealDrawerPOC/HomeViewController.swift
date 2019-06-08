//
//  ViewController.swift
//  SWRevealDrawerPOC
//
//  Created by Rohit Singh on 5/3/19.
//  Copyright © 2019 Carrefour. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let revealController = self.revealViewController()
        revealController?.panGestureRecognizer()
        revealController?.tapGestureRecognizer()
        revealController?.rearViewRevealWidth = self.view.bounds.width
        revealController?.rightViewRevealWidth = self.view.bounds.width
    }
}

