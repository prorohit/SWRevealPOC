//
//  PanGestureUtils.swift
//  SWRevealDrawerPOC
//
//  Created by Rohit Singh on 5/3/19.
//  Copyright © 2019 Carrefour. All rights reserved.
//

import UIKit

public enum PanDirection: Int {
    case up, down, left, right
    public var isVertical: Bool { return [.up, .down].contains(self) }
    public var isHorizontal: Bool { return !isVertical }
}

public extension UIPanGestureRecognizer {
    
    public var direction: PanDirection? {
        let velocity = self.velocity(in: view)
        let isVertical = abs(velocity.y) > abs(velocity.x)
        switch (isVertical, velocity.x, velocity.y) {
        case (true, _, let y) where y < 0: return .up
        case (true, _, let y) where y > 0: return .down
        case (false, let x, _) where x > 0: return .right
        case (false, let x, _) where x < 0: return .left
        default: return nil
        }
    }
}


