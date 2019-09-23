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

class ChemicalEngineeringReactorDesignCSTRIsothermalIsobaricGasPhaseSolveFORrateConstantViewController: UIViewController {

   //var someBarButton: UIBarButtonItem?


 
    //@IBOutlet var ScrollView: UIScrollView!
    

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
    @IBOutlet weak var myTextField10: UITextField! // Initial Volume (m^3)
    @IBOutlet weak var myTextField11: UITextField! // Rate Constant
    

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
        label.text = "Rate Constant \n(CSTR/Isothermal/Isobaric/Gas)"
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
        let tenthValue = Double(myTextField10.text!) // Initial Volume (m^3)  NOTE: INITIAL!!!
        let eleventhValue = Double(myTextField11.text!) // Enter Conversion



        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eightValue != nil && ninthValue != nil && tenthValue != nil && eleventhValue != nil {

            
                
                let greek_lowerCase_del = Double((fourthValue!/firstValue! + thirdValue!/firstValue!) - (secondValue!/firstValue! + firstValue!/firstValue!))
                print("greek_lowerCase_del: \(greek_lowerCase_del)")
                let ya_0 = Double(seventhValue!/(seventhValue! + eightValue!))
                print("ya_0: \(ya_0)")
                let greek_lowerCase_epsilon = Double(ya_0*greek_lowerCase_del)
                print("greek_lowerCase_epsilon: \(greek_lowerCase_epsilon)")
               // var m = 0.5
                
                let modified_Volume = Double(tenthValue! * (1.0 + greek_lowerCase_epsilon * eleventhValue!))
                print("modified_Volume: \(modified_Volume)")
                let Ca = Double((seventhValue!/modified_Volume)*(seventhValue!/seventhValue! - firstValue! * eleventhValue!)/(1.0 + greek_lowerCase_epsilon*eleventhValue!))
            print("Ca: \(Ca)")
                let Cb = Double((seventhValue!/modified_Volume)*(eightValue!/seventhValue! - secondValue! * eleventhValue!)/(1.0 + greek_lowerCase_epsilon*eleventhValue!))
            print("Cb: \(Cb)")
                let modified_VolumetricFlowRate = Double(ninthValue! * (1.0 + greek_lowerCase_epsilon * eleventhValue!))
                
                // var m = (constant1 - pow(constant2, 0.5)) / (2.0*60.0)
                //4
                
                
                let RateConstant = Double((ninthValue!*(seventhValue!/tenthValue!)*eleventhValue!)/(modified_Volume*pow(Ca, fifthValue!)*pow(Cb, sixthValue!)))
                
                // ################################################
                myLabel1.text = "Rate Constant = \(RateConstant)"
                // myLabel1.text = "Conversion = \(m)"
                //return m
            
            //        myLabel1.text = "Conversion = \(m)"
            
            //  self.myLabel1.text = "Conversion = \(m)"
            //myLabel1.text = "Conversion = \(m)"
            //   return m
            
            
            //   let Conversion = m
            
            //        bisection(x: 1.0)
        //    let bis = bisection(x: 1.0)

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
