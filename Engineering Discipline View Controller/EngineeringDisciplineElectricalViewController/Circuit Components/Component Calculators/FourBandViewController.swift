//
//  FirstViewController.swift
//  Resistor-Colors
//
//  Created by Matthew Curtner on 9/25/16.
//  Copyright © 2016 Matthew Curtner. All rights reserved.
//

import UIKit
//import GoogleMobileAds

class FourBandViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var resistanceLabel: UILabel!
    @IBOutlet weak var toleranceLabel: UILabel!
    @IBOutlet weak var resistanceImage: UIImageView!
    
    var bannerView: AdBanner!
    
    var component1Row = 0
    var component2Row = 0
    var multiplierRow = 1.0
    var toleranceRow = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayAdBanner()
        calculate()
    }
    
    func displayAdBanner() {
        bannerView = AdBanner(frame: self.view.frame)
        bannerView.rootViewController = self
        bannerView.displayAd()
        self.view.addSubview(bannerView!)
    }
    
    
    /// Determine the number of rows for the Component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 2 {
            return multiplierBandColorArray.count
        }
        if component == 3 {
            return toleranceBandColorArray.count
        }
        
        return colorBandArray.count
    }

    /// Set 4 components for 4-Band Resistors
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 4
    }
    
    
    /// Create a UIView for each row in components
    /// Each view will display color located in the respective array
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        // Create a new UILabel and set the background color
        // This allow for a evenly spaced background
        let colorLabel = UILabel()
        
        switch component {
        case 2:
            colorLabel.backgroundColor = multiplierBandColorArray[row]
        case 3:
            colorLabel.backgroundColor = toleranceBandColorArray[row]
        default:
            colorLabel.backgroundColor = colorBandArray[row]
        }
        
        // Return the colored view
        return colorLabel
    }
    
    /// Update which row was selected from which component and store in the global variable
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            component1Row = row
            calculate()
        case 1:
            component2Row = row
            calculate()
        case 2:
            multiplierRow = multiplierBandValues[row]
            calculate()
        case 3:
            toleranceRow = row
            calculate()
        default:
            calculate()
        }
    }
    
    /// Calculate the resistance based on the supplied values
    func calculate() {
        resistanceLabel.text = calculateResistance(firstBand: component1Row, secondBand: component2Row, thirdBand: nil, muliplierBand: multiplierRow)
        toleranceLabel.text = "\(toleranceBandValues[toleranceRow]) %"
    }
    
}

