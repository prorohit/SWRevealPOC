//
//  LeftViewController.swift
//  SWRevealDrawerPOC
//
//  Created by Rohit Singh on 5/3/19.
//  Copyright © 2019 Carrefour. All rights reserved.
//

import UIKit

class RightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let selector = #selector(self.panGesture(_:))
        let panGesture = UIPanGestureRecognizer(target: self, action: selector)
        self.view.addGestureRecognizer(panGesture)
    }
    
    @objc func panGesture(_ recognizer: UIPanGestureRecognizer) {
//        let changeInPosition = recognizer.translation(in: view)
//
//        if let direction = recognizer.direction, direction == .right
//            && (recognizer.state == UIGestureRecognizer.State.ended)
//            && changeInPosition.x >= self.view.frame.width / 2.0 {
//            self.revealViewController()?.setFrontViewPosition(.left, animated: true)
//        }
        
        if let direction = recognizer.direction, direction == .right {
            self.revealViewController()?.setFrontViewPosition(.left, animated: true)
        }
        
    }

}
