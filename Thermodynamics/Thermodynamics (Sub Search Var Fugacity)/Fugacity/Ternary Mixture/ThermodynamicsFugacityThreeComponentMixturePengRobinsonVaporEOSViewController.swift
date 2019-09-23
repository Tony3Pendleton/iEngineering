//
//  FluidMechanicsTankEvacuationAndFillingViewController.swift
//  CHE Equations
//
//  Created by Anthony on 1/5/18.
//  Copyright © 2018 CHE Equations. All rights reserved.
//

import UIKit


//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class ThermodynamicsFugacityThreeComponentMixturePengRobinsonVaporEOSViewController: UIViewController {

    
    @IBOutlet var ScrollView: UIScrollView!
    
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Temperature (K)
    @IBOutlet weak var myTextField2: UITextField! // Pressure (bar)
    @IBOutlet weak var myTextField3: UITextField! // Gas Constant "83.14" (cm^3*bar)/(mol*K)
    
    @IBOutlet weak var myTextField4: UITextField! // Component 1 Mole Fraction
    @IBOutlet weak var myTextField5: UITextField! // Component 1 Critical Temperature (K)
    @IBOutlet weak var myTextField6: UITextField! // Component 1 Critical Pressure (bar)
    @IBOutlet weak var myTextField7: UITextField! // Component 1 Accentric Factor
    @IBOutlet weak var myTextField8: UITextField! // Component 2 Mole Fraction
    @IBOutlet weak var myTextField9: UITextField! // Component 2 Critical Temperature (K)
    @IBOutlet weak var myTextField10: UITextField! // Component 2 Critical Pressure (bar)
    @IBOutlet weak var myTextField11: UITextField! // Component 2 Accentric Factor
    @IBOutlet weak var myTextField12: UITextField! // Component 3 Mole Fraction
    @IBOutlet weak var myTextField13: UITextField! // Component 3 Critical Temperature (K)
    @IBOutlet weak var myTextField14: UITextField! // Component 3 Critical Pressure (bar)
    @IBOutlet weak var myTextField15: UITextField! // Component 3 Accentric Factor
    @IBOutlet weak var myTextField16: UITextField! // Iterative Guess for Compressibility Factor (Normally "1")
    
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    @IBOutlet weak var myLabel6: UILabel!
    @IBOutlet weak var myLabel7: UILabel!
//    @IBOutlet weak var myLabel8: UILabel!
//    @IBOutlet weak var myLabel9: UILabel!
//    @IBOutlet weak var myLabel10: UILabel!
//    @IBOutlet weak var myLabel11: UILabel!
//    @IBOutlet weak var myLabel12: UILabel!
//    @IBOutlet weak var myLabel13: UILabel!
//    @IBOutlet weak var myLabel14: UILabel!
//    @IBOutlet weak var myLabel15: UILabel!
//    @IBOutlet weak var myLabel16: UILabel!
//    @IBOutlet weak var myLabel17: UILabel!
//    @IBOutlet weak var myLabel18: UILabel!
//    @IBOutlet weak var myLabel19: UILabel!
//    @IBOutlet weak var myLabel20: UILabel!
//    @IBOutlet weak var myLabel21: UILabel!
//    @IBOutlet weak var myLabel22: UILabel!
//    @IBOutlet weak var myLabel23: UILabel!
//    @IBOutlet weak var myLabel24: UILabel!
//    @IBOutlet weak var myLabel25: UILabel!
//    @IBOutlet weak var myLabel26: UILabel!
//    @IBOutlet weak var myLabel27: UILabel!
//    @IBOutlet weak var myLabel28: UILabel!
//    @IBOutlet weak var myLabel29: UILabel!
//    @IBOutlet weak var myLabel30: UILabel!

    
    
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
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:75))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Pure Component Fugacities \n(PR EoS - Ternary Vapor Mixture)"
        self.navigationItem.titleView = label
        // -----
        // ########### SCROLLING (1of2)#########################
        ScrollView.contentSize.height = 3000
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        // ################################################
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### End Menu (Tutorial) (3) ###############
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
    
    //----------
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
     
        
        let firstValue = Double(myTextField1.text!) // Temperature (K)
        let secondValue = Double(myTextField2.text!) // Pressure (bar)
        let thirdValue = Double(myTextField3.text!) // Gas Constant "83.14" (cm^3*bar)/(mol*K)
        let fourthValue = Double(myTextField4.text!) // Component 1 Mole Fraction
        let fifthValue = Double(myTextField5.text!) // Component 1 Critical Temperature (K)
        let sixthValue = Double(myTextField6.text!) // Component 1 Critical Pressure (bar)
        let seventhValue = Double(myTextField7.text!) // Component 1 Accentric Factor
        let eighthValue = Double(myTextField8.text!) // Component 2 Mole Fraction
        let ninthValue = Double(myTextField9.text!) // Component 2 Critical Temperature (K)
        let tenthValue = Double(myTextField10.text!) // Component 2 Critical Pressure (bar)
        let eleventhValue = Double(myTextField11.text!) // Component 2 Accentric Factor
        let twelvthValue = Double(myTextField12.text!) // Component 3 Mole Fraction
        let thirteenthValue = Double(myTextField13.text!) // Component 3 Critical Temperature (K)
        let fourteenthValue = Double(myTextField14.text!) // Component 3 Critical Pressure (bar)
        let fifteenthValue = Double(myTextField15.text!) // Component 3 Accentric Factor
        let sixteenthValue = Double(myTextField16.text!) // Iterative Guess for Compressibility Factor (Normally "1")

        myLabel1.isHidden = false
        myLabel2.isHidden = false
        myLabel3.isHidden = false
        myLabel4.isHidden = false
        myLabel5.isHidden = false
        myLabel6.isHidden = false
        myLabel7.isHidden = false
//        myLabel8.isHidden = false
//        myLabel9.isHidden = false
//        myLabel10.isHidden = false
//        myLabel11.isHidden = false
//        myLabel12.isHidden = false
//        myLabel13.isHidden = false
//        myLabel14.isHidden = false
//        myLabel15.isHidden = false
//        myLabel16.isHidden = false
//        myLabel17.isHidden = false
//        myLabel18.isHidden = false
//        myLabel19.isHidden = false
//        myLabel20.isHidden = false
//        myLabel21.isHidden = false
//        myLabel22.isHidden = false
//        myLabel23.isHidden = false
//        myLabel24.isHidden = false
//        myLabel25.isHidden = false
//        myLabel26.isHidden = false
//        myLabel27.isHidden = false
//        myLabel28.isHidden = false
//        myLabel29.isHidden = false
//        myLabel30.isHidden = false

       
    
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eighthValue != nil && ninthValue != nil && tenthValue != nil && eleventhValue != nil && twelvthValue != nil && thirteenthValue != nil && fourteenthValue != nil && fifteenthValue != nil && sixteenthValue != nil  {
            
            let BIGomega = 0.07780
            let psi = 0.45724
            let sigma = 2.414213562373095
            let epsilon = -0.41421356237
            
            //////////////////////////////////////////////////
            /////////////////greek alpha_i calculation//////////
            //////////////////////////////////////////////////
            // ================ Component 1 ====================
            let constant1 = Double(pow(seventhValue!, 2))
            let constant2 = Double(0.37464 + 1.54226*seventhValue! - 0.26992*constant1)
            let constant3 = Double(pow((firstValue! / fifthValue!), 0.5))
            let constant4 = Double(1 - constant3)
            let constant5 = Double(constant2 * constant4)
            let constant6 = Double(1 + constant5)
            let alpha_1 = Double(pow(constant6, 2))
            // ================================================
            // ================ Component 2 ====================
            let constant7 = Double(pow(eleventhValue!, 2))
            let constant8 = Double(0.37464 + 1.54226*eleventhValue! - 0.26992*constant7)
            let constant9 = Double(pow((firstValue! / ninthValue!), 0.5))
            let constant10 = Double(1 - constant9)
            let constant11 = Double(constant8 * constant10)
            let constant12 = Double(1 + constant11)
            let alpha_2 = Double(pow(constant12, 2))
            // ================================================
            // ================ Component 3 ====================
            let constant13 = Double(pow(fifteenthValue!, 2))
            let constant14 = Double(0.37464 + 1.54226*fifteenthValue! - 0.26992*constant13)
            let constant15 = Double(pow((firstValue! / thirteenthValue!), 0.5))
            let constant16 = Double(1 - constant15)
            let constant17 = Double(constant14 * constant16)
            let constant18 = Double(1 + constant17)
            let alpha_3 = Double(pow(constant18, 2))
            // ================================================
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////

            ///////////////////////////////////////////////////
            ////////////// a_i calculation     ////////////////
            ///////////////////////////////////////////////////
            // ================ Component 1 ===================
            let a_1 = Double(psi*alpha_1*thirdValue!*thirdValue!*fifthValue!*fifthValue!/sixthValue!)
            // ================================================
            // ================ Component 2 ===================
             let a_2 = Double(psi*alpha_2*thirdValue!*thirdValue!*ninthValue!*ninthValue!/tenthValue!)
            // ================================================
            // ================ Component 3 ===================
             let a_3 = Double(psi*alpha_3*thirdValue!*thirdValue!*thirteenthValue!*thirteenthValue!/fourteenthValue!)
            // ================================================
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            
            ///////////////////////////////////////////////////
            /////////////// b_i calculation     ///////////////
            ///////////////////////////////////////////////////
            // ================ Component 1 ===================
            let b_1 = Double(BIGomega*thirdValue!*fifthValue!/sixthValue!)
            // ================================================
            // ================ Component 2 ===================
            let b_2 = Double(BIGomega*thirdValue!*ninthValue!/tenthValue!)
            // ================================================
            // ================ Component 3 ===================
            let b_3 = Double(BIGomega*thirdValue!*thirteenthValue!/fourteenthValue!)
            // ================================================
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            ///////////////////////////////////////////////////
            //////// a_sqrt_mean_avg_ij calculation   /////////
            ///////////////////////////////////////////////////
            // ================ Component 1 ===================
            let a_sqrt_mean_avg_12 = Double(pow(a_1*a_2, 0.5))
            // ================================================
            // ================ Component 2 ===================
            let a_sqrt_mean_avg_13 = Double(pow(a_1*a_3, 0.5))
            // ================================================
            // ================ Component 3 ===================
            let a_sqrt_mean_avg_23 = Double(pow(a_2*a_3, 0.5))
            // ================================================
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            ///////////////////////////////////////////////////
            ////////////// a_mix calculation   ////////////////
            ///////////////////////////////////////////////////
            //from In-Class Thermo II Notes 03122018
            let a_mix = Double(fourthValue! * fourthValue! * a_1 + eighthValue! * eighthValue! * a_2 + twelvthValue! * twelvthValue! * a_3 + 2 * fourthValue! * eighthValue! * a_sqrt_mean_avg_12 + 2 * fourthValue! * twelvthValue! * a_sqrt_mean_avg_13 + 2 * eighthValue! * twelvthValue! * a_sqrt_mean_avg_23)
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            ///////////////////////////////////////////////////
            ////////////// a_mean_i calculation   /////////////
            ///////////////////////////////////////////////////
            // ================ Component 1 ===================
            let a_mean_1 = Double(2*fourthValue!*a_1 + 2*eighthValue!*a_sqrt_mean_avg_12 + 2*twelvthValue!*a_sqrt_mean_avg_13 - a_mix)
            // ================================================
            // ================ Component 2 ===================
            let a_mean_2 = Double(2*fourthValue!*a_sqrt_mean_avg_12 + 2*eighthValue!*a_2 + 2*twelvthValue!*a_sqrt_mean_avg_23 - a_mix)
            // ================================================
            // ================ Component 3 ===================
            let a_mean_3 = Double(2*fourthValue!*a_sqrt_mean_avg_13 + 2*eighthValue!*a_sqrt_mean_avg_23 + 2*twelvthValue!*a_3 - a_mix)
            // ================================================
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            ///////////////////////////////////////////////////
            ////////////// b_mix calculation   ////////////////
            ///////////////////////////////////////////////////
            let b_mix = Double(fourthValue!*b_1 + eighthValue!*b_2 + twelvthValue!*b_3)
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            ///////////////////////////////////////////////////
            ////////////////// q calculation //////////////////
            ///////////////////////////////////////////////////
            let q = Double(a_mix / b_mix / thirdValue! / firstValue!)
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            
            ///////////////////////////////////////////////////
            ////////////////// beta calculation ///////////////
            ///////////////////////////////////////////////////
            let beta = Double(b_mix * secondValue! / thirdValue! / firstValue!)
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            ///////////////////////////////////////////////////
            ////////// Z Iteration calculation ////////////////
            ///////////////////////////////////////////////////
            
            // ATTEMPT 1 shivangdave website ~example
            let ziterconstant1 = Double(epsilon * sigma * beta * beta)
            let ziterconstant2 = Double(sigma * beta * beta)
            let ziterconstant3 = Double(epsilon * beta * beta)
            let ziterconstant4 = Double(ziterconstant1 + ziterconstant2 + ziterconstant3)
            let ziterconstant5 = Double(2.0 * beta)
            let ziterconstant6 = Double(sigma * beta)
            let ziterconstant7 = Double(epsilon * beta)
            // let ziterconstant8 = Double(sigma * betaOutputValue + epsilon * betaOutputValue)
            let ziterconstant9 = Double(q * beta)
   
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
                for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(sixteenthValue!) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    //                        var i = Double()
                    if i == 0
                        
                    {
                        
                        // Peng Rob. vapor and vapor like set to zero
                        baseValue = -firstX + 1.0 + beta - ziterconstant9 * ((firstX - beta) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of Peng Rob. vapor and vapor like set to zero
                        derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        // 2of2         Peng Rob. equation set to zero
                        baseValue = -firstX + 1.0 + beta - ziterconstant9 * ((firstX - beta) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of Peng Rob. set to zero
                        derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                        
                        //print(fdvalueArray)
                        
                        if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                        {
                            print("solved after \(i)th iteration")
                            
                            
                            print("Root is: \(rootArray[i])")
                       
                            solved = true
                            break
                            
                        }
           myLabel1.text = "Compressibility Factor = \(rootArray[i])"
                     let CompressibilityFactor = Double(rootArray[i])
                        let I_vapor = Double((1/(sigma - epsilon)) * log((CompressibilityFactor + sigma * beta)/(CompressibilityFactor + epsilon * beta)))
                        
                        ///////////////////////////////////////////////////
                        /////////// q_mean_i calculation //////////////////
                        ///////////////////////////////////////////////////
                        // ================ Component 1 ===================
                        let q_mean_1 = Double(q*(1+(a_mean_1/a_mix)-(b_1/b_mix)))
                        // ================================================
                        // ================ Component 2 ===================
                        let q_mean_2 = Double(q*(1+(a_mean_2/a_mix)-(b_2/b_mix)))
                        // ================================================
                        // ================ Component 3 ===================
                        let q_mean_3 = Double(q*(1+(a_mean_3/a_mix)-(b_3/b_mix)))
                        // ================================================
                        ///////////////////////////////////////////////////
                        ///////////////////////////////////////////////////
                        ///////////////////////////////////////////////////
                        
                        
                        ///////////////////////////////////////////////////
                        /////////// fugacity coeffs. calculation///////////
                        ///////////////////////////////////////////////////
                        // ================ Component 1 ===================
                        let phi_1 = Double(pow(2.718281828, ((b_1/b_mix)*(CompressibilityFactor-1)-log(CompressibilityFactor-beta)-q_mean_1*I_vapor)))
                        // ================================================
                        // ================ Component 2 ===================
                        let phi_2 = Double(pow(2.718281828, ((b_2/b_mix)*(CompressibilityFactor-1)-log(CompressibilityFactor-beta)-q_mean_2*I_vapor)))
                        // ================================================
                        // ================ Component 3 ===================
                        let phi_3 = Double(pow(2.718281828, ((b_3/b_mix)*(CompressibilityFactor-1)-log(CompressibilityFactor-beta)-q_mean_3*I_vapor)))
                        // ================================================
                        ///////////////////////////////////////////////////
                        ///////////////////////////////////////////////////
                        ///////////////////////////////////////////////////
                        
                        ///////////////////////////////////////////////////
                        ////////////// fugacity calculation ///////////////
                        ///////////////////////////////////////////////////
                        // ================ Component 1 ===================
                        let fugacity_1 = Double(phi_1 * fourthValue! * secondValue!)
                        // ================================================
                        // ================ Component 2 ===================
                        let fugacity_2 = Double(phi_2 * eighthValue! * secondValue!)
                        // ================================================
                        // ================ Component 3 ===================
                        let fugacity_3 = Double(phi_3 * twelvthValue! * secondValue!)
                        // ================================================
                        ///////////////////////////////////////////////////
                        ///////////////////////////////////////////////////
                        ///////////////////////////////////////////////////
                        
//                        myLabel1.text = "α_1 = \(alpha_1)"
//                        myLabel2.text = "α_2 = \(alpha_2)"
//                        myLabel3.text = "α_3 = \(alpha_3)"
//
//                        myLabel4.text = "a_1 = \(a_1)"
//                        myLabel5.text = "a_2 = \(a_2)"
//                        myLabel6.text = "a_3 = \(a_3)"
//
//                        myLabel7.text = "b_1 = \(b_1)"
//                        myLabel8.text = "b_2 = \(b_2)"
//                        myLabel9.text = "b_3 = \(b_3)"
//
//                        myLabel10.text = "a_mix = \(a_mix)"
//                        myLabel11.text = "b_mix = \(b_mix)"
//
//                        myLabel12.text = "a_sqrt_mean_12 = \(a_sqrt_mean_avg_12)"
//                        myLabel13.text = "a_sqrt_mean_13 = \(a_sqrt_mean_avg_13)"
//                        myLabel14.text = "a_sqrt_mean_23 = \(a_sqrt_mean_avg_23)"
//
//                        myLabel15.text = "a_mean_1 = \(a_mean_1)"
//                        myLabel16.text = "a_mean_2 = \(a_mean_2)"
//                        myLabel17.text = "a_mean_3 = \(a_mean_3)"
//
//                        myLabel18.text = "β = \(beta)"
//                        myLabel19.text = "q = \(q)"
//
//                        myLabel21.text = "I = \(I_vapor)"
//
//                        myLabel22.text = "q_mean_1 = \(q_mean_1)"
//                        myLabel23.text = "q_mean_2 = \(q_mean_2)"
//                        myLabel24.text = "q_mean_3 = \(q_mean_3)"
                        
                        myLabel2.text = "Component 1 \nFugacity Coefficient = \n\(phi_1)"
                        myLabel3.text = "Component 2 \nFugacity Coefficient = \n\(phi_2)"
                        myLabel4.text = "Component 3 \nFugacity Coefficient = \n\(phi_3)"
                        
                        myLabel5.text = "Component 1 \nFugacity = \n\(fugacity_1) bar"
                        myLabel6.text = "Component 2 \nFugacity = \n\(fugacity_2) bar"
                        myLabel7.text = "Component 3 \nFugacity = \n\(fugacity_3) bar"
                        
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            ///////////////////////////////////////////////////
            ////////////////// I calculation //////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
          
            
            // ################################################
            

            
            
        }else{
            
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"
            myLabel4.text = "Hey! Enter a number!"
            myLabel5.text = "Hey! Enter a number!"
            myLabel6.text = "Hey! Enter a number!"
            myLabel7.text = "Hey! Enter a number!"
//            myLabel8.text = "Hey! Enter a number!"
//            myLabel9.text = "Hey! Enter a number!"
//            myLabel10.text = "Hey! Enter a number!"
//            myLabel11.text = "Hey! Enter a number!"
//            myLabel12.text = "Hey! Enter a number!"
//            myLabel13.text = "Hey! Enter a number!"
//            myLabel14.text = "Hey! Enter a number!"
//            myLabel15.text = "Hey! Enter a number!"
//            myLabel16.text = "Hey! Enter a number!"
//            myLabel17.text = "Hey! Enter a number!"
//            myLabel18.text = "Hey! Enter a number!"
//            myLabel19.text = "Hey! Enter a number!"
//            myLabel20.text = "Hey! Enter a number!"
//            myLabel21.text = "Hey! Enter a number!"
//            myLabel22.text = "Hey! Enter a number!"
//            myLabel23.text = "Hey! Enter a number!"
//            myLabel24.text = "Hey! Enter a number!"
//            myLabel25.text = "Hey! Enter a number!"
//            myLabel26.text = "Hey! Enter a number!"
//            myLabel27.text = "Hey! Enter a number!"
//            myLabel28.text = "Hey! Enter a number!"
//            myLabel29.text = "Hey! Enter a number!"
//            myLabel30.text = "Hey! Enter a number!"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
  
        
        
     
            
  

            
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
      
                    
                    
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
