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

class ChemicalEngineeringReactorDesignCSTRIsothermalIsobaricGasPhaseSolveFORVolumeViewController: UIViewController {




 
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
    @IBOutlet weak var myTextField11: UITextField! // Conversion

    @IBOutlet weak var myLabel1: UILabel!

    @IBOutlet weak var myLabel2: UILabel!
    
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
        label.text = "Volume \n(CSTR/Isothermal/Isobaric/Gas)"
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
        let eleventhValue = Double(myTextField11.text!) // Conversion



        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eightValue != nil && ninthValue != nil && tenthValue != nil && eleventhValue != nil {
            
            //delete NOT PART of DEFAULT!!!!
         //   func bisection(x: Double) -> Double {
                //   func bisection(x: Double) -> Double {   /////default
//                //1
//                var lower = 0.0
//
//
//                //2
//                var upper = x
//                //     var upper = x ////default
//                //3
//                //  let stoichiometry_thermal_mass = Double(seventhValue! * (fifthValue! * eightValue!)
//                //    let constant2 = Double(1+4*60)
//                var m = (upper + lower) / 2.0
//                // var m = (stoichiometry_thermal_mass - pow(constant2, 0.5)) / (2.0*60.0)
//                let epsilon = 1e-12
//                //4
//                print(m)
//
                let stoichiometry_thermal_mass = Double(fourthValue!/firstValue! + thirdValue!/firstValue! - secondValue!/firstValue! - firstValue!/firstValue!)
                print("stoichiometry_thermal_mass: \(stoichiometry_thermal_mass)")

                let ya0 = Double(seventhValue!/(seventhValue! + eightValue!))
                print("ya0: \(ya0)")

                let Ca_constant = Double(seventhValue!/seventhValue!-firstValue!*eleventhValue!)
                print("Ca_constant: \(Ca_constant)")

                let Cb_constant = Double(eightValue!/seventhValue!-secondValue!*eleventhValue!)
                 print("Cb_constant: \(Cb_constant)")
                let adjustment_for_varying_density = Double(1.0+stoichiometry_thermal_mass*ya0*eleventhValue!)
                print("adjustment_for_varying_density: \(adjustment_for_varying_density)")
                
                
                
                let Ca_AND_adjustment_for_varying_density_CONSTANT = Double(Ca_constant/adjustment_for_varying_density)
                print("Ca_AND_adjustment_for_varying_density_CONSTANT: \(Ca_AND_adjustment_for_varying_density_CONSTANT)")

                let Cb_AND_adjustment_for_varying_density_CONSTANT = Double(Cb_constant/adjustment_for_varying_density)
                print("Cb_AND_adjustment_for_varying_density_CONSTANT: \(Cb_AND_adjustment_for_varying_density_CONSTANT)")

                let initial_volumetricFlowRate_TIMES_Conversion_CONSTANT = Double(ninthValue!*eleventhValue!)
                print("initial_volumetricFlowRate_TIMES_Conversion_CONSTANT: \(initial_volumetricFlowRate_TIMES_Conversion_CONSTANT)")
//""""""
                let InitialMolesofA_TIMES_Ca_AND_adjustment_for_varying_density_CONSTANT = Double(seventhValue! * Ca_AND_adjustment_for_varying_density_CONSTANT) // 0.299772
              print("InitialMolesofA_TIMES_Ca_AND_adjustment_for_varying_density_CONSTANT: \(InitialMolesofA_TIMES_Ca_AND_adjustment_for_varying_density_CONSTANT)")
                
                let InitialMolesofA_TIMES_Cb_AND_adjustment_for_varying_density_CONSTANT = Double(seventhValue! * Cb_AND_adjustment_for_varying_density_CONSTANT) // 0.699753
            print("InitialMolesofA_TIMES_Cb_AND_adjustment_for_varying_density_CONSTANT: \(InitialMolesofA_TIMES_Cb_AND_adjustment_for_varying_density_CONSTANT)")
            
                let InitialMolesofA_TIMES_initial_volumetricFlowRate_TIMES_Conversion_CONSTANT = Double(seventhValue! * initial_volumetricFlowRate_TIMES_Conversion_CONSTANT) // 0.0314667
            print("InitialMolesofA_TIMES_initial_volumetricFlowRate_TIMES_Conversion_CONSTANT: \(InitialMolesofA_TIMES_initial_volumetricFlowRate_TIMES_Conversion_CONSTANT)")
            
            
                //....
                
                let powerof_InitialMolesofA_TIMES_Ca_AND_adjustment_for_varying_density_CONSTANT = Double(pow(InitialMolesofA_TIMES_Ca_AND_adjustment_for_varying_density_CONSTANT, fifthValue!)) // 0.00242
            print("powerof_InitialMolesofA_TIMES_Ca_AND_adjustment_for_varying_density_CONSTANT: \(powerof_InitialMolesofA_TIMES_Ca_AND_adjustment_for_varying_density_CONSTANT)")
            
                let powerof_InitialMolesofA_TIMES_Cb_AND_adjustment_for_varying_density_CONSTANT = Double(pow(InitialMolesofA_TIMES_Cb_AND_adjustment_for_varying_density_CONSTANT, sixthValue!)) // 0.11740
            print("powerof_InitialMolesofA_TIMES_Cb_AND_adjustment_for_varying_density_CONSTANT: \(powerof_InitialMolesofA_TIMES_Cb_AND_adjustment_for_varying_density_CONSTANT)")
            
                //==
                let InitialMolesofA_TIMES_initial_volumetricFlowRate_TIMES_Conversion_CONSTANT______DIVIDED______rateConstant = Double(InitialMolesofA_TIMES_initial_volumetricFlowRate_TIMES_Conversion_CONSTANT/tenthValue!) //0.209778
            print("InitialMolesofA_TIMES_initial_volumetricFlowRate_TIMES_Conversion_CONSTANT______DIVIDED______rateConstant: \(InitialMolesofA_TIMES_initial_volumetricFlowRate_TIMES_Conversion_CONSTANT______DIVIDED______rateConstant)")
            
                //++
                let added_rate_laws = Double(fifthValue! + sixthValue!) // 11
                 print("added_rate_laws: \(added_rate_laws)")
            //::::
                let powerof_InitialMolesofA_TIMES_Ca_AND_adjustment_for_varying_density_CONSTANT_______TIMES________powerof_InitialMolesofA_TIMES_Cb_AND_adjustment_for_varying_density_CONSTANT = Double(powerof_InitialMolesofA_TIMES_Ca_AND_adjustment_for_varying_density_CONSTANT*powerof_InitialMolesofA_TIMES_Cb_AND_adjustment_for_varying_density_CONSTANT) // 0.00028
            print("powerof_InitialMolesofA_TIMES_Ca_AND_adjustment_for_varying_density_CONSTANT_______TIMES________powerof_InitialMolesofA_TIMES_Cb_AND_adjustment_for_varying_density_CONSTANT: \(powerof_InitialMolesofA_TIMES_Ca_AND_adjustment_for_varying_density_CONSTANT_______TIMES________powerof_InitialMolesofA_TIMES_Cb_AND_adjustment_for_varying_density_CONSTANT)")
            
                //
                let canceling_of_a_common_factor_of_the_unknown_var = Double(added_rate_laws - 1.0) // 10
            print("canceling_of_a_common_factor_of_the_unknown_var: \(canceling_of_a_common_factor_of_the_unknown_var)")
                //>>>
                let constant_fraction = Double(InitialMolesofA_TIMES_initial_volumetricFlowRate_TIMES_Conversion_CONSTANT______DIVIDED______rateConstant / powerof_InitialMolesofA_TIMES_Ca_AND_adjustment_for_varying_density_CONSTANT_______TIMES________powerof_InitialMolesofA_TIMES_Cb_AND_adjustment_for_varying_density_CONSTANT) // 738.135
            print("constant_fraction: \(constant_fraction)")
            
                //~~~
                let after_taking_derivative = Double(constant_fraction * canceling_of_a_common_factor_of_the_unknown_var) // 7381.35
            print("after_taking_derivative: \(after_taking_derivative)")
            
                //----
                let power_after_derivative = Double(canceling_of_a_common_factor_of_the_unknown_var - 1.0) // 9
            print("power_after_derivative: \(power_after_derivative)")
            
                
                // final derivative from example I created is......... 7381.35x^9
                
//""""""
                //print(seventeenthValue!)
                //print(seventhValue!)
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                
                var rootArray = [Double]()
                var fvalueArray = [Double]()
                var fdvalueArray = [Double]()
                var solved = false
              //  print(seventeenthValue!)
             //   print(seventhValue!)
                if !solved
                {
                    // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
                    for i in 0...1000 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                    {
                        var firstX = Double(5000) //INITIAL GUESS --> might be wrong (look at if needing to debug)
                      //  print(seventeenthValue!)
                      //  print(seventhValue!)
                        var baseValue = Double()
                        var derValue = Double()
                        //                        var i = Double()
                        if i == 0
                            
                        {
                            
                            // objective function
                            baseValue = -firstX*adjustment_for_varying_density + (initial_volumetricFlowRate_TIMES_Conversion_CONSTANT*seventhValue!/firstX)/(tenthValue!*pow((seventhValue!/firstX)*Ca_AND_adjustment_for_varying_density_CONSTANT, fifthValue!)*pow((seventhValue!/firstX)*Cb_AND_adjustment_for_varying_density_CONSTANT, sixthValue!))
                            
                            
                            
                            // derivative of objective function
                            derValue = -adjustment_for_varying_density + after_taking_derivative*pow(firstX, power_after_derivative)
                            
                            
                            
                            rootArray.append(firstX)
                            fvalueArray.append(baseValue)
                            fdvalueArray.append(derValue)
                        }
                        else
                        {
                            firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                            
                            // objective function
                            baseValue = -firstX*adjustment_for_varying_density + (initial_volumetricFlowRate_TIMES_Conversion_CONSTANT*seventhValue!/firstX)/(tenthValue!*pow((seventhValue!/firstX)*Ca_AND_adjustment_for_varying_density_CONSTANT, fifthValue!)*pow((seventhValue!/firstX)*Cb_AND_adjustment_for_varying_density_CONSTANT, sixthValue!))
                            
                            // derivative of objective function
                            derValue = -adjustment_for_varying_density + after_taking_derivative*pow(firstX, power_after_derivative)
                            
                            rootArray.append(firstX)
                            fvalueArray.append(baseValue)
                            fdvalueArray.append(derValue)
                       //     print(seventeenthValue!)
                        //    print(seventhValue!)
                            //print(fdvalueArray)
                            
                            if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                            {
                                print("solved after \(i)th iteration")
                                
                                
                                print("Root is: \(rootArray[i])")
                                
                                solved = true
                                break
                                
                            }
                            myLabel1.text = "Initial Volume = \(rootArray[i]) m^3"
                            let rootArrayVariable = rootArray[i]
                            print("rootArrayVariable is: \(rootArrayVariable)")
                        let finalVolume = Double(rootArrayVariable*(1.0+(fourthValue!/firstValue! + thirdValue!/firstValue! - secondValue!/firstValue! - firstValue!/firstValue!)*(seventhValue!/(seventhValue! + eightValue!))*eleventhValue!))
                            
                        myLabel2.text = "Final Volume = \(finalVolume) m^3"
                            
                            
                        }
                       // print(seventeenthValue!)
                       // print(seventhValue!)
                    }
                    self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
//                while (fabs((initial_volumetricFlowRate_TIMES_Conversion_CONSTANT*seventhValue!/m)/(tenthValue!*pow((seventhValue!/m)*Ca_AND_adjustment_for_varying_density_CONSTANT, fifthValue!)*pow((seventhValue!/m)*Cb_AND_adjustment_for_varying_density_CONSTANT, sixthValue!)) - m*adjustment_for_varying_density - 0.0) > epsilon) {
//                    //5
//                    print(m)
//                    //   m = (stoichiometry_thermal_mass - pow(constant2, 0.5)) / (2.0*6.0)
//
//                     m = (lower + upper)/2
//
//                    if (initial_volumetricFlowRate_TIMES_Conversion_CONSTANT*seventhValue!/m)/(tenthValue!*pow((seventhValue!/m)*Ca_AND_adjustment_for_varying_density_CONSTANT, fifthValue!)*pow((seventhValue!/m)*Cb_AND_adjustment_for_varying_density_CONSTANT, sixthValue!)) - m*adjustment_for_varying_density > 0.0 {
//                        upper = m
//                    } else {
//                        lower = m
//                    }
//                    //                  myLabel1.text = "Conversion = \(m)"
//                }
//                print(m)
//                myLabel1.text = "Initial Volume = \(m) m^3"
//                let finalVolume = Double(m*(1.0+(fourthValue!/firstValue! + thirdValue!/firstValue! - secondValue!/firstValue! - firstValue!/firstValue!)*(seventhValue!/(seventhValue! + eightValue!))*eleventhValue!))
//
//                myLabel2.text = "Final Volume = \(finalVolume) m^3"
//                return m
//            }
//            //        myLabel1.text = "Conversion = \(m)"
//
//            //  self.myLabel1.text = "Conversion = \(m)"
//            //myLabel1.text = "Conversion = \(m)"
//            //   return m
//
//
//            //   let Conversion = m
//
//            //        bisection(x: 1.0)
//            let bis = bisection(x: 100000000.0)
//
//
//
//
//            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
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
