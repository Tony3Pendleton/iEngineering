//
//  SearchMASTERSubjectCategoryViewController.swift
//  CHE Equations
//
//  Created by Anthony Pendleton on 3/24/18.
//  Copyright © 2018 CHE Equations. All rights reserved.
//

import Foundation


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

import UIKit
import Foundation

/// Calculate Resistance based on the provided band color values
///
/// - parameter firstBand:     Integer value between 0 and 9
/// - parameter secondBand:    Integer value between 0 and 9
/// - parameter thirdBand:     Optional: Integer value between 0 and 9
/// - parameter muliplierBand: Integer value between 1 and 7
///
/// - returns: Calulated Resistance value in String format
func calculateResistance(firstBand: Int, secondBand: Int, thirdBand: Int?, muliplierBand: Double) -> String {
    let combined = combineCommonBandsValues(firstBand: firstBand, secondBand: secondBand, thirdBand: thirdBand)
    let total = calculateResistanceWithMultiplierBand(resistance: combined, mulitplier: muliplierBand)
    
    return OhmFormatting(value: total)
}

/// Concatenate 1st, 2nd, and 3rd? resistor band values
///
/// - parameter firstBand:  Integer value between 0 and 9
/// - parameter secondBand: Integer value between 0 and 9
/// - parameter thirdBand:  Optional: Integer value between 0 and 9
///
/// - returns: Concatenated Integer value of parameters
func combineCommonBandsValues(firstBand: Int, secondBand: Int, thirdBand: Int?) -> Int {
    // Return if the 3rd Band is available
    if thirdBand != nil {
        let concatedValue = "\(firstBand)\(secondBand)\(thirdBand!)"
        return Int(concatedValue)!
    }
    
    let concatedValue = "\(firstBand)\(secondBand)"
    return Int(concatedValue)!
}

/// Multiply the resistance value by the mulitplier * 10^i
///
/// - parameter resistance: Calcualted resistance value
/// - parameter mulitplier: Multipliter index number
///
/// - returns: Double value
func calculateResistanceWithMultiplierBand(resistance: Int, mulitplier: Double) -> Double {
    return Double(resistance) * mulitplier
}

/// Format the Ohm value based on the number of zero's
///
/// - parameter value: Double - Resistance Value
///
/// - returns: String value of formatted Double
func OhmFormatting(value: Double) -> String {
    
    //Base Ohms
    if value < 1000 {
        return "\(value) Ω"
    }
    
    //Kilo Ohms
    if (value >= 1000 && value < 1000000) {
        return "\(value * 0.001) KΩ"
    }
    
    //Mega Ohms
    if (value >= 1000000 && value < 1000000000) {
        return "\(value * 0.000001) MΩ"
    }
    
    //Giga Ohms
    if (value >= 1000000000 && value < 1000000000000) {
        return "\(value * 0.000000001) GΩ"
    }
    
    return "No Ohms Value Found"
}
