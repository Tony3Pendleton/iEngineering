//
//  SearchMASTERSubjectCategoryViewController.swift
//  CHE Equations
//
//  Created by Anthony Pendleton on 3/24/18.
//  Copyright © 2018 CHE Equations. All rights reserved.
//

import Foundation
import UIKit


/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */


// Defines the colors used in the common bands e.g. 1st, 2nd, or 3rd bands
let colorBandArray: [UIColor] = [.black, .brown, .red, .orange, .yellow, .green, .blue, .purple, .gray, .white]

// Defines the colors used in the multiplier band
let multiplierBandColorArray: [UIColor] = [.black, .brown, .red, .orange, .yellow, .green, .blue, .purple, .gray, .white,
                                           UIColor(red: 1, green: 207/255.0, blue: 10/255.0, alpha: 1.0),
                                           UIColor(red: 204/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1.0)]

// Defines multiplier band values
let multiplierBandValues = [1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 0.1, 0.01]


// Defines the colors used in the tolerance band
let toleranceBandColorArray: [UIColor] =  [.brown, .red, .orange, .yellow, .green, .blue, .purple, .gray,
                                           UIColor(red: 1, green: 207/255.0, blue: 10/255.0, alpha: 1.0),
                                           UIColor(red: 204/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1.0)]

// Defines the tolerance band values
let toleranceBandValues: [Double] = [1, 2, 3, 4, 0.5, 0.25, 0.10, 0.05, 5, 10]


// Defines the temperature coefficient colors
let tempCoefficentColorsArray: [UIColor] = [.brown, .red, .orange, .yellow, .blue, .purple]

// Defines the temperature coefficient
let tempCoefficentValues: [Int] = [100, 50, 15, 25, 10, 5]
