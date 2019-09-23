//
//  UIButtonExtension.swift
//  StackOverFlowQuestionPageViewEmbedByContainer
//
//  Created by Anthony Pendleton on 11/12/18.
//  Copyright © 2018 Jawbone. All rights reserved.
//

import Foundation
import UIKit

class myCircularButtons: UIButton {
    override open func layoutSubviews() {
        super.layoutSubviews()
        let radius = min(bounds.width, bounds.height) / 2
        layer.cornerRadius = radius
    }
}




