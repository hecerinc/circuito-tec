//
//  AnimationDelegate.swift
//  circuito
//
//  Created by MacBook on 11/22/16.
//  Copyright © 2016 Hector Rincon. All rights reserved.
//

import QuartzCore

class AnimationDelegate: NSObject, CAAnimationDelegate {
    
    fileprivate let completion: () -> Void
    
    init(completion: @escaping () -> Void) {
        self.completion = completion
    }
    
    dynamic func animationDidStop(_: CAAnimation, finished: Bool) {
        completion()
    }
}
