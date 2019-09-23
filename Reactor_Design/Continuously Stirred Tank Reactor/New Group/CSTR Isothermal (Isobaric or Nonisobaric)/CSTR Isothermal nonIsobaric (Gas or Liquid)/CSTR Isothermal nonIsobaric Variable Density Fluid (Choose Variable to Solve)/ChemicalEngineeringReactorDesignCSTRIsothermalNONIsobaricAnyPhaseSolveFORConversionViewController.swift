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

class ChemicalEngineeringReactorDesignCSTRIsothermalNONIsobaricAnyPhaseSolveFORConversionViewController: UIViewController {




 
    @IBOutlet var ScrollView: UIScrollView!
    

    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!

    @IBOutlet weak var myTextField1: UITextField! // Enter A Stoichiometric Coefficient
    @IBOutlet weak var myTextField2: UITextField! // Enter B Stoichiometric Coefficient
    
    @IBOutlet weak var myTextField3: UITextField! // Enter C Stoichiometric Coefficient
    @IBOutlet weak var myTextField4: UITextField! // Enter D Stoichiometric Coefficient
    @IBOutlet weak var myTextField5: UITextField! // Reaction Order with Respect to A
    @IBOutlet weak var myTextField6: UITextField! // Reaction Order with Respect to B
    
    @IBOutlet weak var myTextField7: UITextField! // Initial Moles of A (mol)
    @IBOutlet weak var myTextField8: UITextField! // Initial Moles of B (mol B)
    @IBOutlet weak var myTextField9: UITextField! // Initial Volumetric Flow Rate (m^3/s)
    @IBOutlet weak var myTextField10: UITextField! // Rate Constant
    @IBOutlet weak var myTextField11: UITextField! // Initial Volume (m^3)
    
    @IBOutlet weak var myTextField12: UITextField! // Initial Pressure (Pa)
    @IBOutlet weak var myTextField13: UITextField!  // Final Pressure (Pa)
    
   


    @IBOutlet weak var myLabel1: UILabel!


    override func viewDidLoad() {
        //----makes keyboard disappear by tapping anywhere (1of3)----
        super.viewDidLoad()

        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)
        //-----------------------------------------------------------
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Conversion \n(CSTR/Isothermal/Nonisobaric/Variable Fluid Density)"
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
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017

        myLabel1.isHidden = false

        let firstValue = Double(myTextField1.text!) // Stoichiometric Coefficient with Respect to A
        let secondValue = Double(myTextField2.text!) // Stoichiometric Coefficient with Respect to B
        let thirdValue = Double(myTextField3.text!) // Stoichiometric Coefficient with Respect to C
        let fourthValue = Double(myTextField4.text!) // Stoichiometric Coefficient with Respect to D
        let fifthValue = Double(myTextField5.text!) // Reaction Order with  Respect to A
        let sixthValue = Double(myTextField6.text!)  // Reaction Order with Respect to B
        let seventhValue = Double(myTextField7.text!) // Initial Moles of A (mol A)
        let eightValue = Double(myTextField8.text!) // Initial Moles of B (mol B)
        let ninthValue = Double(myTextField9.text!) // Initial Volumetric Flow Rate (m^3/s) NOTE: INITIAL!!!
        let tenthValue = Double(myTextField10.text!) // Rate Constant
        let eleventhValue = Double(myTextField11.text!) // Initial Volume (m^3)
        let twelthValue = Double(myTextField12.text!) // Initial Pressure (Pa)
        let thirteenthValue = Double(myTextField13.text!) // Final Pressure (Pa)


         if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eightValue != nil && ninthValue != nil && tenthValue != nil && eleventhValue != nil && twelthValue != nil && thirteenthValue != nil {

            //delete NOT PART of DEFAULT!!!!
            func bisection(x: Double) -> Double {
                //   func bisection(x: Double) -> Double {   /////default
                //1
                var lower = 0.0
                
                let modifiedPressure = Double(thirteenthValue!/twelthValue!)
                //2
                var upper = x
                //     var upper = x ////default
                //3
                //  let constant1 = Double(seventhValue! * (fifthValue! * eightValue!)
                //    let constant2 = Double(1+4*60)
                var m = 0.2
                // var m = (constant1 - pow(constant2, 0.5)) / (2.0*60.0)
                let epsilon = 1e-12
                //4
                print(m)
                
                while (fabs((ninthValue!*(seventhValue!/eleventhValue!)*m)/(tenthValue!*pow(modifiedPressure * (seventhValue!/eleventhValue!)*(seventhValue!/seventhValue! - firstValue! * m)/(1.0 + ((seventhValue!/(seventhValue! + eightValue!))*((fourthValue!/firstValue! + thirdValue!/firstValue!) - secondValue!/firstValue! - firstValue!/firstValue!))*m), fifthValue!)*pow(modifiedPressure*(seventhValue!/eleventhValue!)*(eightValue!/seventhValue! - secondValue! * m)/(1.0 + ((seventhValue!/(seventhValue! + eightValue!))*((fourthValue!/firstValue! + thirdValue!/firstValue!) - secondValue!/firstValue! - firstValue!/firstValue!))*m), sixthValue!)) - (eleventhValue! * (1.0 + ((seventhValue!/(seventhValue! + eightValue!))*((fourthValue!/firstValue! + thirdValue!/firstValue!) - secondValue!/firstValue! - firstValue!/firstValue!)) * m))*modifiedPressure - 0.0) > epsilon) {
                    //5
                    print(m)
                    //   m = (constant1 - pow(constant2, 0.5)) / (2.0*6.0)
                    
                    m = (lower + upper)/2
                    if (ninthValue!*(seventhValue!/eleventhValue!)*m)/(tenthValue!*pow(modifiedPressure * (seventhValue!/eleventhValue!)*(seventhValue!/seventhValue! - firstValue! * m)/(1.0 + ((seventhValue!/(seventhValue! + eightValue!))*((fourthValue!/firstValue! + thirdValue!/firstValue!) - secondValue!/firstValue! - firstValue!/firstValue!))*m), fifthValue!)*pow(modifiedPressure*(seventhValue!/eleventhValue!)*(eightValue!/seventhValue! - secondValue! * m)/(1.0 + ((seventhValue!/(seventhValue! + eightValue!))*((fourthValue!/firstValue! + thirdValue!/firstValue!) - secondValue!/firstValue! - firstValue!/firstValue!))*m), sixthValue!)) - (eleventhValue! * (1.0 + ((seventhValue!/(seventhValue! + eightValue!))*((fourthValue!/firstValue! + thirdValue!/firstValue!) - secondValue!/firstValue! - firstValue!/firstValue!)) * m))*modifiedPressure > 0.0 {
                        
                        upper = m
                    } else {
                        lower = m
                    }
                    //                  myLabel1.text = "Conversion = \(m)"
                }
                print(m)
                myLabel1.text = "Conversion = \(m)"
                return m
            }
            //        myLabel1.text = "Conversion = \(m)"
            
            //  self.myLabel1.text = "Conversion = \(m)"
            //myLabel1.text = "Conversion = \(m)"
            //   return m
            
            
            //   let Conversion = m
            
            //        bisection(x: 1.0)
            let bis = bisection(x: 1.0)
            
            


            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed

        }else{
            myLabel1.text = "Hey! Enter a number!"
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
    }

    //-------------- 05052018
    //-------------------------------

    func sideMenus() {
        if revealViewController() != nil{

            menuButtonFromPengRob.target = revealViewController()
            menuButtonFromPengRob.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160


            logButtonFromPengRob.target = revealViewController()
            logButtonFromPengRob.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed

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
    //-----------------------------------------------

}


//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
