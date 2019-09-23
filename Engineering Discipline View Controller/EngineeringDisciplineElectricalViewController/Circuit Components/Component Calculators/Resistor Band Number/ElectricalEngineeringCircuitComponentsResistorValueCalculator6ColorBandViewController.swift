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

class ElectricalEngineeringCircuitComponentsResistorValueCalculator6ColorBandViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    //////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    
        @IBOutlet var ScrollView: UIScrollView!
        
        @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
        @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
        
        @IBOutlet weak var myTextField1: UITextField! // Resistance (R | Ω)
        @IBOutlet weak var myTextField2: UITextField! // Inductive Reactance (Ω)
        //|||||||||||||||||||||||||||

//    @IBOutlet weak var myPickerView: UIPickerView!
//
//    @IBOutlet weak var resistanceLabel: UILabel!
//    @IBOutlet weak var toleranceLabel: UILabel!
    
    //    @IBOutlet weak var myPickerView: UIPickerView!
//    @IBOutlet weak var resistanceLabel: UILabel!
//    @IBOutlet weak var toleranceLabel: UILabel!
//    @IBOutlet weak var resistanceImage: UIImageView!
    @IBOutlet weak var resistanceLabel: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var toleranceLabel: UILabel!
    @IBOutlet weak var tempCoefficentLabel: UILabel!
    var component1Row = 0
    var component2Row = 0
    var component3Row = 0
    var multiplierRow = 1.0
    var toleranceRow = 0
    var tempCoefficentRow = 0
        //|||||||||||||||||||||||||||
    
    //    @IBOutlet weak var myLabel1: UILabel!
        
        
        override func viewDidLoad() {
            //----makes keyboard disappear by tapping anywhere (1of3)----
            super.viewDidLoad()
            
            //Looks for single or multiple taps.
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            
            //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
            //tap.cancelsTouchesInView = false
            
            view.addGestureRecognizer(tap)
            //-----------------------------------------------------------
            // -----
            let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
            label.backgroundColor = .white
            label.numberOfLines = 3
            
            label.textAlignment = .center
            label.textColor = .black
            label.text = "Resistance Color Code"
             label.font = UIFont(name: "HelveticaNeue", size: 15)
            self.navigationItem.titleView = label
            // -----
            // ########### SCROLLING (1of2)#########################
            ScrollView.contentSize.height = 2000
            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
            // ################################################
            // ########### Menu (Tutorial) (3) ###############
            sideMenus()
            customizeNavBar()
            // ##############################################
            //----makes keyboard disappear by tapping anywhere (3of3)----
            dismissKeyboard()
            //-----------------------------------------------------------
            //||||||||| start 2
             calculate()
            //|||||||||||||||| end 2
            //+++++++++++ start 2
            setGradientBackground()
            //+++++++++++ end 2
        }
        
        // ########### SCROLLING (2of2) #########################
        @objc func keyboardWillShow(notification:NSNotification){
            //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
            var userInfo = notification.userInfo!
            var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
            keyboardFrame = self.view.convert(keyboardFrame, from: nil)
            
            var contentInset:UIEdgeInsets = self.ScrollView.contentInset
            contentInset.bottom = keyboardFrame.size.height
            ScrollView.contentInset = contentInset
        }
        
        @objc func keyboardWillHide(notification:NSNotification){
            let contentInset:UIEdgeInsets = UIEdgeInsets.zero
            ScrollView.contentInset = contentInset
        }
        // ################################################
        
       //|||||||||||||||||| start 3
    /// Determine the number of rows for the Component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 3 {
            return multiplierBandColorArray.count
        }
        if component == 4 {
            return toleranceBandColorArray.count
        }
        if component == 5 {
            return tempCoefficentColorsArray.count
        }
        
        return colorBandArray.count
    }
    
    /// Set 4 components for 5-Band Resistors
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 6
    }
    
    /// Create a UIView for each row in components
    /// Each view will display color located in the respective array
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        // Create a new UILabel and set the background color
        // This allow for a evenly spaced background
        let colorLabel = UILabel()
        
        switch component {
        case 3:
            colorLabel.backgroundColor = multiplierBandColorArray[row]
        case 4:
            colorLabel.backgroundColor = toleranceBandColorArray[row]
        case 5:
            colorLabel.backgroundColor = tempCoefficentColorsArray[row]
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
            component3Row = row
            calculate()
        case 3:
            multiplierRow = multiplierBandValues[row]
            calculate()
        case 4:
            toleranceRow = row
            calculate()
        case 5:
            tempCoefficentRow = row
            calculate()
        default:
            calculate()
        }
    }
    
    /// Calculate the resistance based on the supplied values
    func calculate() {
        resistanceLabel.text = calculateResistance(firstBand: component1Row,secondBand: component2Row,
                                                   thirdBand: component3Row, muliplierBand: multiplierRow)
        toleranceLabel.text = "\(toleranceBandValues[toleranceRow]) %"
        
        tempCoefficentLabel.text = "\(tempCoefficentValues[tempCoefficentRow]) ppm"
    }
    



        //||||||||||||||||| end 3
//++++++++++++++++++++++++++++++++++++++++++++++++++++ start 1
    func setGradientBackground() {
        let colorTop =  UIColor(red: 64.0/255.0, green: 64.0/255.0, blue: 64.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 22.0/255.0, green: 22.0/255.0, blue: 22.0/255.0, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
self.view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++ end 1

    
    
    
    
        func sideMenus() {
            if revealViewController() != nil{
                
                menuButtonFromPengRob.target = revealViewController()
                menuButtonFromPengRob.action = #selector(SWRevealViewController.revealToggle(_:))
                revealViewController().rearViewRevealWidth = 275
                revealViewController().rightViewRevealWidth = 160
                
                
                logButtonFromPengRob.target = revealViewController()
                logButtonFromPengRob.action = #selector(SWRevealViewController.rightRevealToggle(_:))
                view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
                
            }
        }
        
        // ------- Might be a redundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
        func customizeNavBar() {
            navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
            navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
            self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
            
        }
        // ------------------------------
        //----makes keyboard disappear by tapping anywhere (2of3)----
        //Calls this function when the tap is recognized.
        func dismissKeyboard() {
            //Causes the view (or one of its embedded text fields) to resign the first responder status.
            view.endEditing(true)
        }
        // ------------------------------
        
}
