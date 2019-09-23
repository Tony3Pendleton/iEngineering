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

class CivilEngineeringGeneralEquationsConcentrationDilutionCalculatorViewController: UIViewController {
    //////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    
        @IBOutlet var ScrollView: UIScrollView!
        
        @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
        @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
        
        @IBOutlet weak var myTextField1: UITextField!
        @IBOutlet weak var myTextField2: UITextField!
    
    @IBOutlet weak var myTextField3: UITextField!
    @IBOutlet weak var myTextField4: UITextField!
    
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
            
            label.textAlignment = .center
            label.textColor = .black
            label.text = "Concentration | Dilution Calculator"
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
            
            
            let InitialConcentration = Double(myTextField1.text!) // Initial Concentration (Mass/Volume)
            let InitialVolume = Double(myTextField2.text!) // Initial Volume (Volume)
            let FinalConcentration = Double(myTextField3.text!) // Final Concentration (Mass/Volume)
            let FinalVolume = Double(myTextField4.text!) // Final Volume (Volume)
            
            
            if InitialConcentration == nil && InitialVolume != nil && FinalConcentration != nil && FinalVolume != nil {
                
                
                let InitialConcentration_Answer = Double(FinalConcentration! *  FinalVolume! / InitialVolume!)
                
                myLabel1.text = "Initial Concentration = \(InitialConcentration_Answer) Mass/Volume"
                   self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                
            }else{
                
                if InitialConcentration != nil && InitialVolume == nil && FinalConcentration != nil && FinalVolume != nil {
                
                    let InitialVolume_Answer = Double(FinalConcentration! *  FinalVolume! / InitialConcentration!)
                    
                    myLabel1.text = "Initial Volume = \(InitialVolume_Answer) Volume"
                       self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                
                }else{
                    if InitialConcentration != nil && InitialVolume != nil && FinalConcentration == nil && FinalVolume != nil {
                        
                        let FinalConcentation_Answer = Double(InitialConcentration! *  InitialVolume! / FinalVolume!)
                        
                        myLabel1.text = "Final Concentration = \(FinalConcentation_Answer) Mass/Volume"
                           self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                    }else{
                        
                        if InitialConcentration != nil && InitialVolume != nil && FinalConcentration != nil && FinalVolume == nil {
                            
                            let FinalVolume_Answer = Double(InitialConcentration! *  InitialVolume! / FinalConcentration!)
                            
                            myLabel1.text = "Final Volume = \(FinalVolume_Answer) Volume"
                               self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                    }
                        else{
                    
                    
                            myLabel1.text = "Hey! Leave the text field of the variable you want to solve empty!"
                            
                            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                    
                }
            
                    }
                }
            }
    }
    
               
        
        
            
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
