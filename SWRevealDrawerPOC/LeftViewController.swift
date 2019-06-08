//
//  LeftViewController.swift
//  SWRevealDrawerPOC
//
//  Created by Rohit Singh on 5/3/19.
//  Copyright © 2019 Carrefour. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let selector = #selector(self.panGesture(_:))
        let panGesture = UIPanGestureRecognizer(target: self, action: selector)
        self.view.addGestureRecognizer(panGesture)
    }
    
    @objc func panGesture(_ recognizer: UIPanGestureRecognizer) {
        if let direction = recognizer.direction, direction == .left {
            self.revealViewController()?.setFrontViewPosition(.left, animated: true)
        }
    }

}

