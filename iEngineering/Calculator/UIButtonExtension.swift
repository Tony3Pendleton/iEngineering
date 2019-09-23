//
//  UIButtonExtension.swift
//  StackOverFlowQuestionPageViewEmbedByContainer
//
//  Created by Anthony Pendleton on 11/12/18.
//  Copyright © 2018 Jawbone. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func flash() {
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.15
        flash.fromValue = 1
        flash.toValue = 0.8
        flash.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 0
        
        
        layer.add(flash, forKey: nil)
        
    }
    
//    override open func layoutSubviews() {
//            super.layoutSubviews()
//
//            let radius = min(bounds.width, bounds.height) / 2
//            layer.cornerRadius = radius
//
//
//
//        }
    
}




